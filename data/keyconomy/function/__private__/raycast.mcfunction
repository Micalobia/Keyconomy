# Roughly the distance for a generic player raycast, bit generous but want to avoid bugs
data merge storage retina:input {\
    TargetBlocks:1b,\
    TargetEntites:0b,\
    MaxRecursionDepth:10,\
    HorizontalCount:1b,\
    VerticalCount:1b,\
    CenteredCount:0b,\
    SpreadFactor:[100,100],\
}
function retina:traverse/setup