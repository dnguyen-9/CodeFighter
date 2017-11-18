using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class MainMenuBehavior : MonoBehaviour
{
    public Dropdown Dropdown = null;
    public Button StartButton = null;

    // Use this for initialization
    void Start ()
    {
        InitializeStageSelectionDropdown();
    }
	
	// Update is called once per frame
	void Update ()
    {
		
	}

    private void InitializeStageSelectionDropdown()
    {
        if (Dropdown != null)
        {
            Dropdown.options.Clear();

            foreach (string stage in StageBuilder.GetStageListFromResources())
            {
                Dropdown.OptionData optionData = new Dropdown.OptionData(stage);
                Dropdown.options.Add(optionData);
            }

            // If a stage is currently active, select that stage by default, otherwise select index zero
            if (!string.IsNullOrEmpty(World.CurrentStageName))
            {
                Dropdown.value = StageBuilder.GetStageListFromResources().IndexOf(World.CurrentStageName);
            }
            else
            {
                Dropdown.value = 0;
            }

            // Update the dropdown to show the latest selected value
            Dropdown.RefreshShownValue();
        }
    }

    public void StartStage()
    {
        World.CurrentStageName = Dropdown.captionText.text;
        SceneManager.LoadScene("Stages");
    }

    public void ChangeSceneBackToMainMenu()
    {
        SceneManager.LoadScene("Main Menu");
    }
}
