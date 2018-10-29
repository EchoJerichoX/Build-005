// Runs within the room creation code of every door in the game (if non-blue door).
// Check if we have already opened a special door before so the player doesn't have to open it again.
// See switch statement case numbers for argument0 meaning.
// Doors where it is possible to initially open from the other side have extra room/variable checks.
switch (argument0)
{
    // --- Red (Missile) ---
    case 1:
        // - Tutorial -
        if (room = Tutorial3) or (room = Tutorial5)
            { if (eId.OpenedTutorial35Red = true) scDefineDoor(Doors.dBlue); }
        if (room = Tutorial9) and (eId.OpenedTutorial9Red = true) scDefineDoor(Doors.dBlue);
        // - Barria Tundra -
        if (room = BarriaIntWest) and (eId.OpenedBarriaIntWestRed = true) scDefineDoor(Doors.dBlue);
        if (room = BarriaCacheMissile) and (eId.OpenedBarriaCacheMissileRedE = true) and (object_index = oDoorGuideE) scDefineDoor(Doors.dBlue);
        if (room = BarriaCacheMissile) and (eId.OpenedBarriaCacheMissileRedW = true) and (object_index = oDoorGuideW) scDefineDoor(Doors.dBlue);
        break;
    // --- Green (Super Missile) ---
    case 2:
        // - Tutorial -
        if (room = Tutorial3)
        {
            if (object_index = oDoorGuideS) and (eId.OpenedTutorial313Green = true) scDefineDoor(Doors.dBlue);
            if (object_index = oDoorGuideE) and (eId.OpenedTutorial315Green = true) scDefineDoor(Doors.dBlue);
        }
        if (room = Tutorial11) and (eId.OpenedTutorial1113Green = true) scDefineDoor(Doors.dBlue);
        if (room = Tutorial13)
        {
            if (y < room_height/2) and (eId.OpenedTutorial313Green = true) scDefineDoor(Doors.dBlue);
            if (y > room_height/2) and (eId.OpenedTutorial1113Green = true) scDefineDoor(Doors.dBlue);
        }
        if (room = Tutorial15) and (eId.OpenedTutorial315Green = true) scDefineDoor(Doors.dBlue);
        break;
    // --- Yellow (Power Bomb) ---
    case 3:
        break;
}
