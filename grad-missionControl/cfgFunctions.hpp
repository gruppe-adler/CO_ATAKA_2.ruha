class grad_missionControl {

	class client {
		  file = grad-missionControl\functions\client;

      class intro;
      class setMyFrequency;
      class setGroupFrequencies;
      class typeText;
  };

	class server {
		  file = grad-missionControl\functions\server;

      class alignUnitsInLine;
      class checkRetreat {postInit = 1;};
      class endMission;
  };
};
