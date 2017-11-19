using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine.SceneManagement;

/// <summary>
/// Static class that controls game behavior.  Since only one instance will ever be necessary, all internals are defined as static
/// </summary>
public class CustomGameManager
{
    #region Private Fields

    private static Stage _CurrentCustomStage = null;

    private static List<Stage> _CustomStages = new List<Stage>();

    #endregion Private Fields

    #region Public Constructors

    public CustomGameManager()
    {
    }

    #endregion Public Constructors

    #region Public Properties

    public static Stage CurrentStage
    {
        get { return _CurrentCustomStage; }
        set { _CurrentCustomStage = value; }
    }

    #endregion Public Properties

    #region Public Methods

    public static void LoadCustomStages()
    {
        // Remove existing stages to prevent conflicts
        _CustomStages.Clear();

        // Add a stage for each file in the games resources
        foreach (string fileName in StageBuilder.GetStageListFromResources())
        {
            Stage stage = StageBuilder.LoadStageFromResources(fileName);
            _CustomStages.Add(stage);
        }
    }

    /// <summary>
    /// Attempts to navigate to the next stage
    /// </summary>
    private static void NextStage()
    {
        int indexOfCurrentStage = _CustomStages.IndexOf(_CurrentCustomStage);

        if (indexOfCurrentStage < _CustomStages.Count())
        {
            _CurrentCustomStage = _CustomStages[indexOfCurrentStage + 1];
            StartStage(_CurrentCustomStage.StageName);
        }
        else
        {
            // TODO: User has beat the custom game!
        }
    }

    /// <summary>
    /// Starts a stage based on the name given
    /// </summary>
    /// <param name="stageName">Name of stage to start</param>
    public static void StartStage(string stageName)
    {
        if (_CustomStages.Any(s => s.StageName == stageName))
        {
            _CurrentCustomStage = _CustomStages.FirstOrDefault(s => s.StageName.Equals(stageName, StringComparison.CurrentCultureIgnoreCase));
            SceneManager.LoadScene("Stages");
        }
    }

    public static void StageCompleted()
    {
        // Pass to leaderboards, custom stage

        NextStage();
    }

    #endregion Public Methods
}