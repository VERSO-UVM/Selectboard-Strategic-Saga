# Selectboard-Strategic-Saga

## Game Objective

Players, acting as town selectboard members, explore a stylized version of their town to collect, prioritize, and timeline infrastructure and community development projects. The game simulates real-world planning challenges, including budget constraints and unexpected events.

What is a succeful run of the game: budget is in the green, citizen happiness/impact (how do we measure that, do the users set that value or do we?), distribution of work, user scorer of effort for a project (overcommitment by month? Quarter?)
---

## Game World Structure

The game world is a 2D top-down map divided into zones, each representing a key area of municipal planning:

### 1. Transportation Zone (The Roadhouse)
- **Focus**: Roads, bridges, sidewalks, public transit  
- **Project Examples**: Bridge repair, new bike lanes, road resurfacing  

### 2. Water & Sewer Zone (The Pit)
- **Focus**: Water treatment, stormwater, sewer lines  
- **Project Examples**: Water main replacement, green infrastructure  

### 3. Public Safety Zone (The Citidel)
- **Focus**: Fire, police, emergency response  
- **Project Examples**: New fire station, emergency alert system  

### 4. Education Zone (The Schoolhouse)
- **Focus**: Schools, libraries, adult education  
- **Project Examples**: School roof repair, library expansion  

### 5. Parks & Recreation Zone (The Great Forest)
- **Focus**: Trails, playgrounds, community centers  
- **Project Examples**: Trail extension, park revitalization  

### 6. Downtown & Economic Development Zone (The Square)
- **Focus**: Small business support, zoning, housing  
- **Project Examples**: Façade improvement grants, mixed-use zoning  on of town buildings

---

## Characters: Selectboard Members
Each player controls a selectboard avatar with unique traits (e.g., Budget Hawk, Community Advocate, Infrastructure Buff). They collect **Project Tokens** from each zone and carry them in a **Planning Satchel**.

---

## Project Tokens

Each token represents a budgetary item with:
- Name
- Cost
- Impact Score
- Urgency
- Dependencies (e.g., road must be fixed before school bus route is viable)

Players must prioritize and sequence these tokens in a **Strategic Planning Table** at Town Hall.

---

## Chaos Element: “The Disruptor”

A roaming chaos entity introduces random events such as:
- Floods that destroy roads
- Budget shortfalls
- Emergency overrides (e.g., school boiler failure)
- Public protests that shift priorities

These events force players to reassess priorities, reallocate funds, or delay projects.

---

## Strategic Planning Phase

At the end of the journey:
- Players enter **Town Hall**
- Use a **drag-and-drop interface** to build a **timeline of projects**
- Must stay within a **multi-year budget**
- Receive feedback from **virtual stakeholders** (residents, businesses, etc.)

---

## Godot Implementation Notes

- **Scenes**: Each zone is a separate scene with its own logic and assets
- **Inventory System**: For carrying project tokens
- **Dialogue System**: For NPCs and stakeholder feedback
- **Event System**: For chaos events and inter-zone dependencies
- **UI**: Strategic Planning Table with timeline and budget meter
