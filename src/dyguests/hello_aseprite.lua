local spr = app.activeSprite
if spr then
    app.transaction(function()
        for i, cel in ipairs(spr.cels) do
            local img = cel.image
            for y = 0, img.height - 1 do
                for x = 0, img.width - 1 do
                    local pixel = img:getPixel(x, y)
                    if app.pixelColor.rgba(pixel) == app.pixelColor.rgba(255, 255, 255, 255) then
                        img:drawPixel(x, y, app.pixelColor.rgba(0, 0, 0, 0))
                    end
                end
            end
        end
    end)
end
