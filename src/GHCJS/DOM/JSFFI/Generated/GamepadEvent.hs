{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.GamepadEvent
       (js_getGamepad, getGamepad, GamepadEvent, castToGamepadEvent,
        gTypeGamepadEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"gamepad\"]" js_getGamepad ::
        JSRef GamepadEvent -> IO (JSRef Gamepad)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadEvent.gamepad Mozilla GamepadEvent.gamepad documentation> 
getGamepad :: (MonadIO m) => GamepadEvent -> m (Maybe Gamepad)
getGamepad self
  = liftIO ((js_getGamepad (unGamepadEvent self)) >>= fromJSRef)