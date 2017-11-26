using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PaintPickUpBehavior : MonoBehaviour
{
    public PickupEnum Pickup = PickupEnum.None;
    private Player _Player = GameObject.FindGameObjectWithTag("Player").GetComponent(typeof(Player)) as Player;
    
    // Use this for initialization
    void Start()
    {
        Player player = GameObject.FindGameObjectWithTag("Player").GetComponent(typeof(Player)) as Player;

    }

    // Update is called once per frame
    void Update()
    {

    }

    void OnTriggerEnter(Collider collider)
    {
        if (collider.tag == "Player")
        {
            ApplyPickup(collider, this.Pickup);            
        }
    }

    void ApplyPickup(Collider collider, PickupEnum pickup)
    {
        if (collider.tag == "Player")
        {   
            _Player.CurrentPickup = pickup;

            // Update the color of the player
            collider.transform.GetComponent<Renderer>().material.color = GetColorForPickup(pickup);
        }
    }

    void ApplyPickupColor(Collider collider, PickupEnum pickup)
    {
    }

    public static Color GetColorForPickup(PickupEnum pickup)
    {
        Color color = Color.white;

        switch (pickup)
        {
            case PickupEnum.None:
                color = Color.white;
                break;
            case PickupEnum.Speed:
                color = Color.red;
                break;
            default:
                color = Color.white;
                break;
        }

        return color;
    }
}
