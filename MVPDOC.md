# Minimum Viable Product Design Document for Town Planner Game

## Objective of Game
The intention of the Town Planner game is to prompt strategic and forward-looking thinking for select board members when planning town budgets. It is intended to be a tool that encourages meaningful discussion rather than a standalone game. 
## Core Features
- [] Game allows facilitator to select their town from a dropdown and desired number of years to budget for.
- [] A predetermined town budget is assigned to each town option.
- [] User can walk around a fantasy town with keyboard controls. 
- [] Town includes multiple buildings, including one accessible zone for transportation and one Town Square. An accessible building is one that the user can walk up to and is prompted to "enter". Going into a building will cause the scene to transition to a new UI and background.
- [] Upon entering the Transportation Zone, the user is greeted with a popup to define new quests or interact with existing quests.
- [] When a quest is created, it shows up in the queue of existing quests in the zone.
- [] User can enter Town Square and organize existing quests in a strategic order. This order indicates the town's plan for budgeting resources for the set periof time selected. Quests are color coordinated with each zone's theme.
- [] Each quest has specific attributes that help determine its priority (see [here](#quests))

### Game Setup
The facilitator of the game will start by selecting their town and the number of years they wish to budget for. Publicly available town budget data will be associated with the towns in the dropdown. There will be a maximum budget window of 10 years for simplicity. 

### Basic Town Layout
The world the user walks around in will include themed zones for different aspects of town management. The MVP game will have a zone for transportation (including road work, bike lanes, bridge repair, etc.) Additional zones will be added in future versions. Each zone will appear on the map as a building the user can enter. The center of the town features a "Town Square" building where the official timeline is defined. The user can determine the order of how quests are completed and can visualize the target for the budget's time period.

### Quest (Project Token) <a name="quests"></a>
Each quest will have the following attributes:
- Name
- Cost
- Impact Score
- Urgency
- Complexity
- Dependencies (What quests must be completed before this one?)
- State/Federal Mandates (Is this quest required?)
- Available Funding

## Wireframes
Game starting menu

Quest creation popup

Town layout
