using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.UI;

public class World : MonoBehaviour
{
    private List<Stage> _Stages = new List<Stage>();
    
	// Use this for initialization
	void Start ()
    {
        Stage stage = CreateCurrentStage();
        CreateLevel(stage);
	}
	
	// Update is called once per frame
	void Update ()
    {
		
	}

    private Stage CreateCurrentStage()
    {        
        string stagePath = Application.dataPath + "/Resources/Stages/" + _CurrentStageName + ".txt";
        Stage stage = StageBuilder.LoadStageFromFile(stagePath);

        return stage;
    }

    public void CreateLevel(Stage stage)
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
                    sceneObject = (GameObject)GameObject.Instantiate(Resources.Load("Prefabs/Start"));
                    Vector3 spawnPosition = tile.Position + new Vector3(0, 1, 0);
                    GameObject player = (GameObject)GameObject.FindGameObjectWithTag("Player");
                    PlayerMovement.SpawnLocation = spawnPosition;
                    player.transform.position = spawnPosition;
                    break;
                case TileTypeEnum.Solid:
                    sceneObject = (GameObject)GameObject.Instantiate(Resources.Load("Prefabs/Tile"));
                    break;
                case TileTypeEnum.End:
                    sceneObject = (GameObject)GameObject.Instantiate(Resources.Load("Prefabs/End"));
                    break;
                case TileTypeEnum.SlowTrap:
                    sceneObject = (GameObject)GameObject.Instantiate(Resources.Load("Prefabs/SlowTrap"));
                    break;
                case TileTypeEnum.RevertTrap:
                    sceneObject = (GameObject)GameObject.Instantiate(Resources.Load("Prefabs/RevertTrap"));
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

    private static string _CurrentStageName = String.Empty;

    public static string CurrentStageName
    {
        get
        {
            return _CurrentStageName;
        }
        set
        {
            _CurrentStageName = value;
        }
    }
}
