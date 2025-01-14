{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TransitionEvent
       (js_getPropertyName, getPropertyName, js_getElapsedTime,
        getElapsedTime, js_getPseudoElement, getPseudoElement,
        TransitionEvent, castToTransitionEvent, gTypeTransitionEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"propertyName\"]"
        js_getPropertyName :: JSRef TransitionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent.propertyName Mozilla TransitionEvent.propertyName documentation> 
getPropertyName ::
                (MonadIO m, FromJSString result) => TransitionEvent -> m result
getPropertyName self
  = liftIO
      (fromJSString <$> (js_getPropertyName (unTransitionEvent self)))
 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        js_getElapsedTime :: JSRef TransitionEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent.elapsedTime Mozilla TransitionEvent.elapsedTime documentation> 
getElapsedTime :: (MonadIO m) => TransitionEvent -> m Double
getElapsedTime self
  = liftIO (js_getElapsedTime (unTransitionEvent self))
 
foreign import javascript unsafe "$1[\"pseudoElement\"]"
        js_getPseudoElement :: JSRef TransitionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent.pseudoElement Mozilla TransitionEvent.pseudoElement documentation> 
getPseudoElement ::
                 (MonadIO m, FromJSString result) => TransitionEvent -> m result
getPseudoElement self
  = liftIO
      (fromJSString <$> (js_getPseudoElement (unTransitionEvent self)))
#else
module GHCJS.DOM.TransitionEvent (
  ) where
#endif
