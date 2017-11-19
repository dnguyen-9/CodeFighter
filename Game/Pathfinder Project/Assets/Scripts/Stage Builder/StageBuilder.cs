using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using UnityEngine;

/// <summary>
/// Helper class to create custom stages
/// </summary>
public class StageBuilder : MonoBehaviour
{

    #region Public Constructors

    public StageBuilder()
    {
    }

    #endregion Public Constructors

    #region Public Methods

    /// <summary>
    /// Gets a list of all stages saved in the /Resources/Stages/ directory of the application.
    /// </summary>
    /// <returns>List of all stages within the /Resources/Stages/ directory.</returns>
    public static List<string> GetStageListFromResources()
    {
        List<string> stageList = new List<string>();

        var stagesFromResources = Resources.LoadAll("Stages");

        foreach (UnityEngine.Object o in stagesFromResources)
        {
            string stageName = o.name;
            stageList.Add(o.name);
        }

        return stageList;
    }

    /// <summary>
    /// Attempts to load a stage from the /Resources/Stages/ location;
    /// </summary>
    /// <param name="stageName">Stage to load</param>
    /// <returns>Stage object</returns>
    public static Stage LoadStageFromResources(string stageName)
    {
        Stage stage = null;

        string stageText = Resources.Load("Stages/" + stageName).ToString();
        stage = ParseStageFromText(stageText);

        return stage;
    }

    /// <summary>
    /// Builds the stage onto the scene.  This is the only non-static method since it must interface with the scene to make changes, which requires a living object that implements MonoBehaviour
    /// </summary>
    /// <param name="stage">Data model for the stage to build</param>
    public void BuildLevelOntoScene(Stage stage)
    {
        // Destroy tile objects
        foreach (GameObject o in GameObject.FindObjectsOfType<GameObject>())
        {
            o.GetType();

            // If necessary, destroy game object
            if (o.tag.Contains("Tile"))
                Destroy(o.gameObject);
        }

        // Create Level
        foreach (Tile tile in stage.Tiles)
        {
            GameObject sceneObject = null;

            switch (tile.TileType)
            {
                case TileTypeEnum.Start:
                    sceneObject = (GameObject)GameObject.Instantiate(Resources.Load("Prefabs/Tiles/Start"));
                    Vector3 spawnPosition = tile.Position + new Vector3(0, 1, 0);
                    GameObject player = (GameObject)GameObject.FindGameObjectWithTag("Player");
                    PlayerMovement.SpawnLocation = spawnPosition;
                    player.transform.position = spawnPosition;
                    break;

                case TileTypeEnum.Solid:
                    sceneObject = (GameObject)GameObject.Instantiate(Resources.Load("Prefabs/Tiles/Tile"));
                    break;

                case TileTypeEnum.End:
                    sceneObject = (GameObject)GameObject.Instantiate(Resources.Load("Prefabs/Tiles/End"));
                    break;

                case TileTypeEnum.SlowTrap:
                    break;

                case TileTypeEnum.SpeedTrap:
                    break;

                default:
                    break;
            }

            if (sceneObject != null)
            {
                sceneObject.transform.position = tile.Position;
            }
        }
    }

    public void Start()
    {
        if (CustomGameManager.CurrentStage != null)
        {
            BuildLevelOntoScene(CustomGameManager.CurrentStage);
        }
    }

    public void Update()
    {
    }

    #endregion Public Methods

    #region Private Methods

    /// <summary>
    /// Calculate the position from the x/y coordinates provided in the stage file
    /// </summary>
    /// <param name="xPos">The X coordinate within the file</param>
    /// <param name="zPos">The Y coordinate within the file, treated as a Z-coordinate</param>
    /// <returns></returns>
    private static Vector3 CalculatePosition(int xPos, int zPos)
    {
        // Use the tile scale to identify the size so that you can move the tiles around without overlapping them or leaving hugs holes.
        float x = Tile.TileScale.x * xPos;
        float z = Tile.TileScale.z * zPos;

        // Y is set to the default since since we aren't utilizing verticality in the level design
        float y = Tile.TileScale.y;

        Vector3 position = new Vector3(x, y, z);
        return position;
    }

    /// <summary>
    /// Creates a Tile object from a character
    /// </summary>
    /// <param name="character">Character to create a tile from</param>
    /// <param name="xPos">X-Position within a file</param>
    /// <param name="yPos">Y-Position within a file</param>
    /// <returns></returns>
    private static Tile CreateTileFromCharacter(char character, int xPos, int yPos)
    {
        Tile tile = null;

        // Transform the x, y position to a Vector3 position
        Vector3 position = CalculatePosition(xPos, yPos);

        // Determine which tile to use based on the character
        switch (character)
        {
            case 'x':
                tile = null;
                break;

            case 'o':
                tile = new Tile(TileTypeEnum.Solid, false, position);
                break;

            case 's':
                tile = new Tile(TileTypeEnum.Start, false, position);
                break;

            case 'e':
                tile = new Tile(TileTypeEnum.End, false, position);
                break;

            default:
                throw new ArgumentException(String.Format("CreateTileFromCharacter method was passed an invalid character, '{0}' at file position [{1}, {2}]",
                                                          character, xPos, yPos));
        }

        return tile;
    }

    /// <summary>
    /// Takes ASCII text input and uses it to create the tiles in a new Stage object
    /// </summary>
    /// <param name="stageText">Text to parse out</param>
    /// <returns></returns>
    private static Stage ParseStageFromText(string stageText)
    {
        Stage stage = new Stage();

        string[] stageLines = stageText.Split(new[] { '\r', '\n' }, StringSplitOptions.RemoveEmptyEntries);

        for (int currentLineIndex = 0; currentLineIndex < stageLines.Length; currentLineIndex++)
        {
            char[] charactersInLine = stageLines[currentLineIndex].ToCharArray();

            for (int currentCharIndex = 0; currentCharIndex < charactersInLine.Length; currentCharIndex++)
            {
                Tile tile = CreateTileFromCharacter(charactersInLine[currentCharIndex],
                                                    currentCharIndex + 1,
                                                    currentLineIndex + 1);

                if (tile != null)
                {
                    stage.Tiles.Add(tile);
                }
            }
        }

        return stage;
    }

    #endregion Private Methods

}