using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StartTileBehavior : MonoBehaviour
{

	// Use this for initialization
	void Start ()
    {
        // Set spawn location to this tile
        Vector3 gameObjectPosition = this.gameObject.transform.position;
        Vector3 spawnLocation = gameObjectPosition;

        PlayerMovement.SpawnLocation = spawnLocation;
	}
	
	// Update is called once per frame
	void Update ()
    {
		
	}
}
