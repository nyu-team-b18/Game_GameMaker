enum ITEM {
    BR_CHICKEN,
    BL_CHICKEN,
    COPY_POTION,
    KEY,
    BL_COW,
    BR_COW,
    ST_COW,
    BABY_CHICK,
    WHEAT,
    BERRY
}

global.items = array_create(10, undefined);
global.items[ITEM.BR_CHICKEN] = new BrownChicken();
global.items[ITEM.BL_CHICKEN] = new BlackChicken();
global.items[ITEM.COPY_POTION] = new CopyPotion();
global.items[ITEM.KEY] = new Key();
global.items[ITEM.BL_COW] = new BlackCow();
global.items[ITEM.BR_COW] = new BrownCow();
global.items[ITEM.ST_COW] = new StrawberryCow();
global.items[ITEM.BABY_CHICK] = new BabyChick();
global.items[ITEM.WHEAT] = new Wheat();
global.items[ITEM.BERRY] = new Berry();
