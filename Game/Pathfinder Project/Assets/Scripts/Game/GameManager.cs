using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine.SceneManagement;

/// <summary>
/// Static class that controls game behavior.  Since only one instance will ever be necessary, all internals are defined as static
/// </summary>
public class GameManager
{

    #region Private Fields
    
    private static string _CurrentStage = "Level 1";

    // Contains a list of scenes, one for each stage
    private static List<string> _NormalStages = new List<string>()
    {
        "Level 1",
        "Level 2",
        "Level 3",
        "Level 4",
        "Level 5"
    };

    #endregion Private Fields

    public static string CurrentStage
    {
        get
        {
            return _CurrentStage;
        }
    }


    #region Public Constructors

    public GameManager()
    {
    }

    #endregion Public Constructors

    #region Public Methods

    private static void NextStage()
    {
        int indexOfCurrentStage = _NormalStages.IndexOf(_CurrentStage);
        int indexOfNextStage = indexOfCurrentStage + 1;

        if (indexOfNextStage <= _NormalStages.Count() - 1)
        {
            _CurrentStage = _NormalStages[indexOfNextStage];
            PlayCurrentStage();
        }
        else
        {
            // TODO: User has beat the game!
            SceneManager.LoadScene("Main Menu");
        }
    }

    public static void StartGame()
    {
        PlayCurrentStage();
    }

    public static void StageCompleted()
    {
        // TODO: Pass to leaderboards

        // Go to next stage
        NextStage();
    }

    #endregion Public Methods

    #region Private Methods

    private static void PlayCurrentStage()
    {
        SceneManager.LoadScene(_CurrentStage);
    }

    #endregion Private Methods
}
