using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tile
{
    private static readonly Vector3 _TileScale = new Vector3(5f, 0f, 5f);
    private bool _BehaviorIsHidden = false;
    private TileTypeEnum _TileType = TileTypeEnum.Solid;

    private Vector3 _Position = Vector3.zero;

    public Tile(TileTypeEnum tileType, bool behaviorIsHidden, Vector3 position)
    {
        _Position = position;
        _TileType = tileType;
        _BehaviorIsHidden = behaviorIsHidden;
    }

    public static Vector3 TileScale
    {
        get
        {
            return _TileScale;
        }
    }

    /// <summary>
    /// Identifies if the behavior of this tile is visible to the user
    /// </summary>
    public bool BehaviorIsHidden
    {
        get
        {
            return _BehaviorIsHidden;
        }
        set
        {
            _BehaviorIsHidden = value;
        }
    }

    public Vector3 Position
    {
        get
        {
            return _Position;
        }
    }

    public TileTypeEnum TileType
    {
        get
        {
            return _TileType;
        }
        set
        {
            _TileType = value;
        }
    }

}