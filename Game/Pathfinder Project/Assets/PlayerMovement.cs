using System.Collections;
using UnityEngine;

public class PlayerMovement : MonoBehaviour {
//	public GameMaster gameMaster;

	public float moveSpeed;
//	public GameObject deathParticles;
//	public bool usesGameMaster = true;

	private float maxSpeed = 5f;
	private Vector3 input;
	private Vector3 spawn;

	// Use this for initialization
	void Start () {
		spawn = transform.position;
	}
	
	void FixedUpdate () 
	{
		input = new Vector3 (Input.GetAxis ("Horizontal"), 0, Input.GetAxis ("Vertical"));

		if (GetComponent<Rigidbody> ().velocity.magnitude < maxSpeed) 
		{
			GetComponent<Rigidbody> ().AddForce (input * moveSpeed);
		}

		if (transform.position.y < -2) 
		{
			Die();
		}
	}

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
	void Die() 
	{
//		Destroy (gameObject);
		transform.position = spawn;

	}

}
