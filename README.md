# 2D Platformer Game

A simple 2D platformer built with the [Godot Engine](https://godotengine.org/) (v4.5). Run, jump, dodge enemies, and collect kiwis across a tile-based level.

## Gameplay

- **Move & Jump** — Run left/right and jump across platforms.
- **Collect Kiwis** — Pick up kiwi fruit scattered around the level to increase your score.
- **Avoid Enemies** — A patrolling slime walks back and forth on platforms; touching it kills the player.
- **Score Tracking** — Each kiwi collected increases an in-game score counter.

## Project Structure

```
├── project.godot          # Godot project configuration
├── main.tscn               # Root entry scene
├── Scenes/
│   ├── Main.tscn            # Main scene wiring level, player, and UI
│   ├── player.tscn          # Player character scene
│   ├── slime.tscn           # Enemy scene
│   ├── kiwi.tscn             # Collectible scene
│   └── levels/
│       └── level1.tscn      # First level layout
├── Scripts/
│   ├── main.gd               # Connects enemies/collectibles to score & player death
│   ├── player.gd              # Player movement, jumping, animation, death logic
│   ├── slime.gd                # Enemy patrol behavior and player-kill detection
│   └── kiwi.gd                  # Collectible pickup behavior
├── Assests/
│   ├── images/
│   │   ├── Background/
│   │   ├── Collectibles/
│   │   ├── Enemy/
│   │   ├── TileMap/
│   │   └── player/
│   └── sounds/                    # Jump, death, collect, and music audio
├── Green.png / Terrain (16x16).png # Tileset art used for level terrain
└── icon.svg                        # Project icon
```

## Core Mechanics

- **Player** (`player.gd`) — Handles horizontal movement, gravity, jumping, and animation states (`idle`, `Running`, `Jumping`, `Dying`). Plays jump and death sound effects. Movement is disabled once the player dies.
- **Slime enemy** (`slime.gd`) — Moves back and forth automatically, reversing direction on a timer. Emits a `player_died` signal when it touches the player.
- **Kiwi collectible** (`kiwi.gd`) — On pickup, plays a collected animation and sound, disables its collision, and emits a `collected` signal.
- **Main controller** (`main.gd`) — Wires up level signals: increments score when a kiwi is collected, and calls the player's `die()` method when an enemy signals a collision.

## Requirements

- [Godot Engine 4.5](https://godotengine.org/download) or later (Mobile rendering feature set)

## Running the Project

1. Install Godot Engine 4.5+.
2. Clone this repository:
   ```
   git clone https://github.com/e6767/2d-platformer-game.git
   ```
3. Open Godot, choose **Import**, and select the `project.godot` file.
4. Press **Run** (F5) to play.

## Status

This is an early-stage / learning project. Core movement, one enemy type, one collectible, and a single level are implemented. Planned areas for expansion could include additional levels, more enemy types, a UI/HUD for score display, and win/lose states.

## License

No license has been specified yet. Add a `LICENSE` file if you'd like to define usage terms for this project.
