using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stage
{
    private List<Tile> _Tiles = new List<Tile>();

    public Stage()
    {
    }

    public List<Tile> Tiles
    {
        get
        {
            return _Tiles;
        }
        set
        {
            _Tiles = value;
        }
    }
}