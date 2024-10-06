tellraw @s "\n=========================="
tellraw @s \
{\
    "translate":"keyconomy.shop.details.owner",\
    "fallback":"Owner: %s",\
    "color":"#9bcfff",\
    "with":[\
        {"translate":"chat.square_brackets","with":[\
            {"entity":"@n[type=marker,tag=key.shop.active]","nbt":"data.owner.text","interpret":true,"color":"green"}\
        ]}\
    ]\
}
tellraw @s \
{\
    "translate":"keyconomy.shop.details.price",\
    "fallback":"Price: %s",\
    "color":"#9bcfff",\
    "with":[\
        {"translate":"chat.square_brackets","with":[\
            {"score":{"name":"#key.price","objective":"key.math"},"color":"gold"}\
        ]}\
    ]\
}
tellraw @s \
{\
    "translate":"keyconomy.shop.details.count",\
    "fallback":"Count: %s",\
    "color":"#9bcfff",\
    "with":[\
        {"translate":"chat.square_brackets","with":[\
            {"score":{"name":"#key.count","objective":"key.math"},"color":"yellow"}\
        ]}\
    ]\
}
execute if score #key.stock key.math >= #key.count key.math run tellraw @s \
{\
    "translate":"keyconomy.shop.details.in_stock",\
    "fallback":"In stock!",\
    "color": "green"\
}
execute if score #key.stock key.math < #key.count key.math run tellraw @s \
{\
    "translate":"keyconomy.shop.details.in_stock",\
    "fallback":"Out of stock!",\
    "color": "red"\
}