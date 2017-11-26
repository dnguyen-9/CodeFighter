using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraBehavior : MonoBehaviour
{
    private const float Y_ANGLE_MIN = 10f;
    private const float Y_ANGLE_MAX = 35f;

    /// <summary>
    /// Defines the object that the camera will be looking at the entire time
    /// </summary>
    public Transform lookAt;

    /// <summary>
    /// Camera that we're working with
    /// </summary>
    private Camera cam;

    public Transform camTransform;
        
    private float distance = 8;
    private float currentX = 0;
    private float currentY = 0;
    private float sensitivityX = 5;
    private float sensitivityY = 1.5f;

    private void Start()
    {
        camTransform = transform;
        cam = Camera.main;
    }
    	
	// Update is called once per frame
	void Update ()
    {
        // Don't update anything if the game is paused, indicated by a time scale of zero
        if (Time.timeScale == 0)
        {
            return;
        }

        currentX += Input.GetAxis("Mouse X") * sensitivityX;
        currentY += Input.GetAxis("Mouse Y") * sensitivityY;

        // Prevent the camera from moving up or down too far to keep it focused on the game area
        currentY = Mathf.Clamp(currentY, Y_ANGLE_MIN, Y_ANGLE_MAX);        
    }

    private void LateUpdate()
    {
        // Don't update anything if the game is paused, indicated by a time scale of zero
        if (Time.timeScale == 0)
        {
            return;
        }

        Vector3 direction = new Vector3(0, 0, -distance);
        Quaternion rotation = Quaternion.Euler(currentY, currentX, 0);
        camTransform.position = lookAt.position + rotation * direction;
        camTransform.LookAt(lookAt.position);
    }
}
