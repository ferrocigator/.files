import XMonad
import Data.Monoid
import System.Exit

import qualified XMonad.StackSet as W
import qualified Data.Map        as M

main = do
  xmonad $ defaultConfig { 
    -- simple stuff
    terminal            = myTerminal,
    focusFollowsMouse   = myFocusFollowsMouse,
    borderWidth         = myBorderWidth,
    modMask             = myModMask,
    workspaces          = myWorkspaces,
    normalBorderColor   = myNormalBorderColor,
    focusedBorderColor  = myFocusedBorderColor }
    -- key bindings
    --keys                = myKeys,
    --mouseBindings       = myMouseBindings,
    -- hooks, layouts
    --layoutHook          = myLayout,
    --manageHook          = myManageHook,
    --handleEventHook     = myEventHook,
    --logHook             = myLogHook,
    --startupHook         = myStartupHook
  --}

myTerminal              = "st"

myFocusFollowsMouse     :: Bool
myFocusFollowsMouse     = True

myBorderWidth           = 1
myModMask               = mod4Mask

myWorkspaces            = [">_",":/","]$",">=","^/."] ++ map show [6..9]

myNormalBorderColor     = "#161616"
myFocusedBorderColor    = "#aaaaaa"

-- myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
--  [ ((modm .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf)
--  , ((modm,               xK_d     ), spawn 
