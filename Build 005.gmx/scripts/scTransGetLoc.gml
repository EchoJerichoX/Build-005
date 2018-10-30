// Runs in the create event of the transition parent object.
// This determines where individual transition spots in rooms
//   actually go. Just find the position of the object(s) and
//   assign a trans number to it.
// NOTE: MAKE SURE you match the trans number with the door
//   that is on the other side.
switch (room)
{
    /*
    ====
    = Tutorial
    ====
    */
    case TutorialStart:
        trans = 1; // Blue to Tutorial2.
        break;
    case Tutorial2:
        if (x < room_width/2) trans = 1; // Blue to TutorialStart.
        else trans = 2; // Blue to Tutorial3.
        break;
    case Tutorial3:
        if (sprite_index = sprTransitionGuideLR)
        {
            if (y < room_height/3) trans = 3; // Red to Tutorial5.
            else trans = 2; // Blue to Tutorial2.
        }
        else
        {
            if (y < room_height/2) trans = 1; // Blue to Tutorial4.
            else trans = 4; // Green to .
        }
        break;
    case Tutorial4:
        trans = 1; // Blue to Tutorial3.
        break;
    case Tutorial5:
        if (sprite_index = sprTransitionGuideLR)
        {
            if (x < room_width/2) trans = 1; // Blue to Tutorial7.
            else trans = 3; // Blue To Tutorial3.
        }
        else trans = 2; // Blue to Tutorial6.
        break;
    case Tutorial6:
        trans = 2; // Blue to Tutorial5.
        break;
    case Tutorial7:
        if (sprite_index = sprTransitionGuideLR) trans = 1; // Blue to Tutorial5.
        else trans = 2; // Blue to Tutorial8.
        break;
    case Tutorial8:
        if (y < room_height/2) trans = 2; // Blue to Tutorial7.
        else trans = 1; // Blue to Tutorial9;
        break;
    case Tutorial9:
        if (sprite_index = sprTransitionGuideUD)
        {
            if (x < room_width/2) trans = 1; // Blue to Tutorial7.
            else trans = 2; // Blue To Tutorial11.
        }
        else trans = 3; // Red to Tutorial10.
        break;
    case Tutorial10:
        trans = 3; // Blue to Tutorial9.
        break;
    case Tutorial11:
        if (sprite_index = sprTransitionGuideUD)
        {
            if (x < room_width/2) trans = 2; // Blue to Tutorial9.
            else trans = 1; // Green To Tutorial13.
        }
        else trans = 3; // Blue to Tutorial12.
        break;
    case Tutorial12:
        trans = 3; // Blue to Tutorial11.
        break;
    case Tutorial13:
        if (sprite_index = sprTransitionGuideUD)
        {
            if (y < room_height/2) trans = 4; // Green to Tutorial3.
            else trans = 1; // Green To Tutorial11.
        }
        else trans = 2; // Blue to Tutorial14.
        break;
    case Tutorial14:
        trans = 2; // Blue to Tutorial13.
        break;
    case Tutorial15:
        if (x < room_width/2) trans = 5; // Green to Tutorial3.
        else
        {
            if (y < room_height/3) trans = 1; // Blue to .
            else if (y > room_height/3*2) trans = 3; // Yellow to .
            else trans = 2; // Red to .
        }
        break;
        
    /*
    ====
    = Barria Tundra
    ==== 
    */
    case BarriaLandingSite:
        trans = 1; // To BarriaIntWest.
        break;
    case BarriaIntWest:
        if (sprite_index = sprTransitionGuideLR)
        {
            if (x < room_width/2) trans = 1; // To BarriaLandingSite.
            else trans = 3; // To BarriaIceTunnelWest.
        }
        else trans = 2; // To BarriaCacheMissile.
        break;
    case BarriaCacheMissile:
        trans = 2; // To BarriaIntWest.
        break;
}
