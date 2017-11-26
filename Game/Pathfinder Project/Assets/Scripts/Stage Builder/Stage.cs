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

    private string _StageName = String.Empty;
    
    public string StageName
    {
        get { return _StageName; }
        set { _StageName = value; }
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