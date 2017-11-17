using System.Collections;
using UnityEngine;

public class PlayerMovement : MonoBehaviour {
	public GameMaster gameMaster;

	private float moveSpeed = 30f;

	private Vector3 spawnPoint;
	private Vector3 relative;

	private Rigidbody rb;

	private bool is_normal = true;
	private bool is_reverted = false;
	private bool is_frozen = false;

	void Start () {
		spawnPoint = transform.position;
		rb = GetComponent<Rigidbody>();
	}
	
	void FixedUpdate () 
	{
		enableGravity ();

		float moveHorizontal = Input.GetAxis ("Horizontal");
		float moveVertical = Input.GetAxis ("Vertical");

		Vector3 movement = new Vector3 (moveHorizontal, 0.0f, moveVertical);

		rb.AddForce (movement * moveSpeed);

		if (transform.position.y < -2) 
		{
			Die();
		}

		if (is_frozen) {
			print ("Frozen");
			is_frozen = false;

			moveSpeed = 5f;
		}

		if (is_reverted) {
			print ("Reverted");
			is_reverted = false;

			moveSpeed = -30f;
		}
	}

//	void OnCollisionEnter(Collision other) 
//	{
//		if (other.transform.tag == "End") 
//		{
//			print ("Hello");
//		}
//	}

	void OnTriggerEnter(Collider other)
	{
		if (other.transform.name == "End") {
			other.isTrigger = false;

			gameMaster.CompleteLevel ();
		} 
		if (other.transform.name == "Special: Hollow") {
			print ("hollow");

			enableGravity ();
		}
		if (other.transform.name == "Special: Revert") {//
			other.isTrigger = false;

			is_reverted = true;
		}
		if (other.transform.name == "Special: Freeze") {
			other.isTrigger = false;

			is_frozen = true;
		}
	}
		
	void enableGravity()
	{
		rb.useGravity = true;
	}

	void disableGravity()
	{
		rb.useGravity = false;
	}

	void Die() 
	{
		transform.position = spawnPoint;
	}

//	void OnGUI() {
//		Event e = Event.current;
//		if (e.isKey)
//			Debug.Log("Detected key code: " + e.keyCode);
//
//	}
}
