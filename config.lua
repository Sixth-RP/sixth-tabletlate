Config = {
    -- Item required to use tablet
    ItemName = 'tablet',

    -- Apps available on the tablet
    Apps = {
        {
            name = 'Car Boost',
            icon = 'fas fa-car',  -- FontAwesome icon
            event = 'tablet:startCarBoost'
        },
        -- Add more apps here
    }
}