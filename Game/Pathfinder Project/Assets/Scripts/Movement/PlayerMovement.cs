using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerMovement : MonoBehaviour {
//	public GameMaster gameMaster;

	public float _MoveSpeed;
//	public GameObject deathParticles;
//	public bool usesGameMaster = true;

	private float _MaxSpeed = 10f;
	private Vector3 _Input;
	private static Vector3 _SpawnLocation;

	// Use this for initialization
	public void Start ()
    {
		_SpawnLocation = transform.position;
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
        if (GetComponent<Rigidbody>().velocity.magnitude < _MaxSpeed)
        {
            GetComponent<Rigidbody>().AddForce(transformInputBasedOnCamera * _MoveSpeed);
        }

        // Check to see if the player fell off the map
        if (transform.position.y < -6)
        {
            Die();
        }
    }

    #region Collision Example

    //	void OnCollisionEnter(Collision other) 
    //	{
    //		if (other.transform.tag == "Enemy") 
    //		{
    //			Die ();
    //		}
    //	}
    //
    //	void OnTriggerEnter(Collider other)
    //	{
    //		if (other.transform.tag == "Enemy") 
    //		{
    //			Die ();
    //		}
    //		if (other.transform.tag == "Token") 
    //		{
    ////			if (usesGameMaster) 
    ////			{
    //			gameMaster.AddToken ();
    ////			}
    //
    ////			PlaySound (0);
    //			Destroy (other.gameObject);
    //		}
    //		if (other.transform.tag == "Goal") 
    //		{
    ////			PlaySound (1);
    ////			Time.timeScale = 0f;
    //			gameMaster.CompleteLevel();
    //		}
    //	}
    //		
    //

    #endregion

    void Die() 
	{
        //		Check Lives Left;
        SetPlayerPositionToDefault();
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

}
