#include "raylib.h"
#include "game.h"

int main() {
    InitWindow(800, 600, "My Game");
    SetTargetFPS(60);
    while (!WindowShouldClose()) {
        BeginDrawing();
        ClearBackground(BLACK);
        DrawFPS(0, 0);
        DrawText("Hello, world", 0, 20, 20, WHITE);
        EndDrawing();
    }

    CloseWindow();
    return 0;
}