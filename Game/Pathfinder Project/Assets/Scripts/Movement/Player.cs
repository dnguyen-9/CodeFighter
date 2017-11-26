using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
    private PickupEnum _CurrentPickup = PickupEnum.None;

    public PickupEnum CurrentPickup
    {
        get
        {
            return _CurrentPickup;
        }
        set
        {
            _CurrentPickup = value;
        }
    }

    public void Start()
    {
        CurrentPickup = PickupEnum.None;
    }

    public void Update()
    {

    }
    
}
