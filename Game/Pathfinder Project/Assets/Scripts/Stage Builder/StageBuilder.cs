using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class StageBuilder
{
    public StageBuilder()
    {
    }

    public static Stage LoadStageFromResources(string stageName)
    {
        Stage stage = null;

        string stagePath = Application.dataPath + "/Resources/Stages/" + stageName + ".txt";

        if (File.Exists(stagePath))
            stage = LoadStageFromFile(stagePath);

        return stage;
    }

    public static Stage LoadStageFromFile(string stagePath)
    {
        // TODO: Wrap a try/catch around this!
        string stageText = File.ReadAllText(stagePath);
        Stage stage = BuildStageFromText(stageText);

        return stage;
    }

    private static Stage BuildStageFromText(string stageText)
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

    private static Tile CreateTileFromCharacter(char character, int xPos, int yPos)
    {
        Tile tile = null;

        Vector3 position = CalculatePosition(xPos, yPos);


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
    /// Calculate the Vector3 position from the x/y coordinates provided in the stage file
    /// </summary>
    /// <param name="xPos"></param>
    /// <param name="zPos"></param>
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

    public static List<string> GetStageListFromResources()
    {
        List<string> stageList = new List<string>();

        string stagePath = Application.dataPath + "/Resources/Stages/";

        foreach (string file in Directory.GetFiles(stagePath, "*.txt"))
        {
            string stageName = Path.GetFileNameWithoutExtension(file);
            stageList.Add(stageName);
        }

        return stageList;
    }
}