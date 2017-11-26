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
        CustomGameManager.LoadCustomStages();
        InitializeCustomStageSelectionDropdown();
    }
	
	// Update is called once per frame
	void Update ()
    {
		
	}

    /// <summary>
    /// Populates the custom stage selection dropdown
    /// </summary>
    private void InitializeCustomStageSelectionDropdown()
    {
        if (Dropdown != null)
        {
            Dropdown.options.Clear();

            // Create a dropdown option for each stage in the stage list
            List<string> stageList = StageBuilder.GetStageListFromResources();

            foreach (string stage in stageList)
            {
                Dropdown.OptionData optionData = new Dropdown.OptionData(stage);
                Dropdown.options.Add(optionData);
            }

            // If a stage is currently active, select that stage by default, otherwise select index zero
            if (CustomGameManager.CurrentStage != null)
            {
                Dropdown.value = StageBuilder.GetStageListFromResources().IndexOf(CustomGameManager.CurrentStage.StageName);
            }
            else
            {
                Dropdown.value = 0;
            }

            // Update the dropdown to show the latest selected value
            Dropdown.RefreshShownValue();
        }
    }

    public void StartGame()
    {
        GameManager.StartGame();
    }

    public void StartCustomGame()
    {
        CustomGameManager.StartStage(Dropdown.captionText.text);
    }
}
