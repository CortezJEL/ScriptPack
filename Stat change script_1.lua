getglobal game
getfield -1 GetService
pushvalue -2
pushstring Players
pcall 2 1 0
getfield -1 LocalPlayer
getfield -1 PlayerData
getfield -1 StatNameHere
pushnumber 9999999
setfield -2 Value
emptystack
