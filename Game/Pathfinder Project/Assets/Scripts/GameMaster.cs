using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement; 

public class GameMaster : MonoBehaviour {
	
	// Count
	public int currentScore;
	public int highScore;
//	public int tokenCount;
//	private int totalTokenCount;
	public int currentLevel = 0;
	public int unlockedLevel;

	// Timer variables
	public Rect timerRect;
	public Color warningColorTimer;
	public Color defaultColorTimer;
	public float startTime;
	private string currentTime;

	// GUI Skin
	public GUISkin skin;

	// References
//	public GameObject tokenParent;

	private bool levelIsCompleted = false;
	private bool showWinScreen;
//	public int winScreenWidth, winScreenHeight;

	private int maxLevel = 2;

	void Update() 
	{
		if (!levelIsCompleted) 
		{
			startTime -= Time.deltaTime;
			currentTime = string.Format ("{0:0.0}", startTime);

			if (startTime <= 0) {
				startTime = 0;	
//				SceneManager.LoadScene ("Main Menu");
			}
		}
	}

	void Start() 
	{
//		totalTokenCount = tokenParent.transform.childCount;

		if (PlayerPrefs.GetInt ("Level Completed") > 0) 
		{
			currentLevel = (PlayerPrefs.GetInt ("Level Completed"));
		} else {
			currentLevel = 0;
		}
	}

	public void CompleteLevel() 
	{
		showWinScreen = true;
		levelIsCompleted = true;
	}

	void LoadNextLevel() 
	{
		if (currentLevel <= maxLevel) 
		{
			currentLevel += 1;
			SceneManager.LoadScene (currentLevel);

			SaveGame ();
		} else {
			print ("You Win!");
		}
	}

	void SaveGame()
	{
		PlayerPrefs.SetInt ("Level Completed", currentLevel);
		PlayerPrefs.SetInt ("Level " + currentLevel.ToString() + " score", currentScore);
	}

//	public void AddToken() 
//	{
//		tokenCount += 1;
//	}
//
	void OnGUI()
	{
		GUI.skin = skin;

		if (startTime < 5f) 
		{
			skin.GetStyle ("Timer").normal.textColor = warningColorTimer;
		} else {
			skin.GetStyle ("Timer").normal.textColor = defaultColorTimer;
		}

		GUI.Label (timerRect, currentTime, skin.GetStyle("Timer"));
//		GUI.Label (new Rect(45, 100, 200, 200), tokenCount.ToString() + "/" + totalTokenCount.ToString());

		if (showWinScreen) 
		{
			float winScreenWidth = Screen.width * .5f / 2;
			float winScreenHeight = Screen.height * .5f / 2;
			
			Rect winSreenRect = new Rect (Screen.width/2 - winScreenWidth, Screen.height/2 - winScreenHeight, winScreenWidth, winScreenHeight);
			GUI.Box (winSreenRect, "WIN");

//			int gameTime = (int)startTime;
//			currentScore = tokenCount * gameTime;

			if(GUI.Button (new Rect (winSreenRect.x + winSreenRect.width - 170, winSreenRect.y + winSreenRect.height - 60, 150, 40), "Continue"))
			{
				LoadNextLevel ();
			}
			if(GUI.Button (new Rect (winSreenRect.x + 20, winSreenRect.y + winSreenRect.height - 60, 100, 40), "Quit"))
			{
				SceneManager.LoadScene ("Main Menu");
			}

//			GUI.Label (new Rect(winSreenRect.x + 20, winSreenRect.y + 40, 300, 50), "Score: " + currentScore.ToString());
			GUI.Label (new Rect(winSreenRect.x + 20, winSreenRect.y + 90, 300, 50), "Completed Level: " + currentLevel.ToString());

		}
	}
}
