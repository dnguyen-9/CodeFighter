using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerMovement : MonoBehaviour {
	//public GameMaster gameMaster;

    private float _DefaultSpeed = 30f;
    private float _MoveSpeed;
//	public GameObject deathParticles;
//	public bool usesGameMaster = true;
 
    private GameObject RevertTrap;
    private GameObject SlowTrap;
    private GameObject SpeedTrap;

	//private float _MaxSpeed = 10f;
	private Vector3 _Input;
	private static Vector3 _SpawnLocation;

    private Rigidbody _RB;

    private bool _IsReverted;
    private bool _IsSlow;
    private bool _IsFast;

	// Use this for initialization
	public void Start ()
    {
        _MoveSpeed = _DefaultSpeed;
		_SpawnLocation = transform.position;
        _RB = GetComponent<Rigidbody>();
	}
	
    public static Vector3 SpawnLocation
    {
        get
        {
            return _SpawnLocation;
        }
        set
        {
            _SpawnLocation = value;
        }
    }

    public void Update()
    {
        if (Input.GetKey(KeyCode.Escape))
            SceneManager.LoadScene("Main Menu");
    }

    public void FixedUpdate () 
	{
        UpdatePlayerPosition();
	}

    private void UpdatePlayerPosition()
    {
        // Get input from user
        _Input = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));

        // Transform user input to align with the camera position
        Vector3 transformInputBasedOnCamera = Camera.main.transform.TransformDirection(_Input);

        // Apply force to the player
        _RB.AddForce(transformInputBasedOnCamera * _MoveSpeed);

        // Check to see if the player fell off the map
        if (transform.position.y < -6)
        {
            Die();
        }

        if (_IsReverted)
        {
            _MoveSpeed = -Mathf.Abs(_MoveSpeed);
        }

        if (_IsSlow)
        {
            _MoveSpeed = 5f;
        }

        if(_IsFast)
        {   
            _MoveSpeed = 60f;
        }
    }

    #region Collision Example

    void OnCollisionEnter(Collision other)
    {
        if (other.transform.name.StartsWith("End", System.StringComparison.Ordinal))
        {
            //gameMaster.CompleteLevel();
        }
        if (other.transform.name.StartsWith("RevertTrap", System.StringComparison.Ordinal))
        {
            _IsReverted = true;
            _IsSlow = false;
            _IsFast = false;
        }
        if (other.transform.name.StartsWith("SlowTrap", System.StringComparison.Ordinal))
        {
            _IsSlow = true;
            _IsFast = false;
            _IsReverted = false;
        }
        if (other.transform.name.StartsWith("SpeedTrap", System.StringComparison.Ordinal))
        {
            _IsFast = true;
            _IsSlow = false;
            _IsReverted = false;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.transform.name.StartsWith("HollowTrap", System.StringComparison.Ordinal))
        {
            other.isTrigger = true;
        }
    }

    #endregion

    void Die() 
	{
        // Check Lives Left;
        SetPlayerPositionToDefault();
        SetPlayerSpeedToDefault();
        SetTrapBehaviorToDefault();
	}

    private void SetPlayerPositionToDefault()
    {
        Rigidbody rigidBody = GetComponent<Rigidbody>();

        rigidBody.velocity = Vector3.zero;
        rigidBody.angularVelocity = Vector3.zero;
        rigidBody.ResetCenterOfMass();
        rigidBody.ResetInertiaTensor();

        transform.position = _SpawnLocation;
    }
    private void SetPlayerSpeedToDefault()
    {
        _MoveSpeed = _DefaultSpeed;
    }

    private void SetTrapBehaviorToDefault()
    {
        _IsSlow = false;
        _IsReverted = false;
        _IsFast = false;
    }
}
