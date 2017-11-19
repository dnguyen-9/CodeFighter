using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ExitToMenuPanelBehavior : MonoBehaviour
{
    GameObject dialogPanel = null;

    void Start()
    {
        dialogPanel = GameObject.FindGameObjectWithTag("Dialog");
        dialogPanel.SetActive(false);
    }

    void Update()
    {        
        // Key to open the options menu
        if (Input.GetKeyUp(KeyCode.Escape))
        {
            dialogPanel.SetActive(!dialogPanel.active);
        }

        // Alter the time scale so that the timer is paused until resuming gameplay
        if (dialogPanel.active)
        {
            Time.timeScale = 0;
        }
        else
        {
            Time.timeScale = 1;
        }
    }

    public void ChangeSceneBackToMainMenu()
    {
        SceneManager.LoadScene("Main Menu");
    }

    public void ShowPanel()
    {
        dialogPanel.SetActive(true);
    }

    public void HidePanel()
    {
        dialogPanel.SetActive(false);
    }
}
