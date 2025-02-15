{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedLengthList
       (js_getBaseVal, getBaseVal, js_getAnimVal, getAnimVal,
        SVGAnimatedLengthList, castToSVGAnimatedLengthList,
        gTypeSVGAnimatedLengthList)
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

 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        JSRef SVGAnimatedLengthList -> IO (JSRef SVGLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList.baseVal Mozilla SVGAnimatedLengthList.baseVal documentation> 
getBaseVal ::
           (MonadIO m) => SVGAnimatedLengthList -> m (Maybe SVGLengthList)
getBaseVal self
  = liftIO
      ((js_getBaseVal (unSVGAnimatedLengthList self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        JSRef SVGAnimatedLengthList -> IO (JSRef SVGLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList.animVal Mozilla SVGAnimatedLengthList.animVal documentation> 
getAnimVal ::
           (MonadIO m) => SVGAnimatedLengthList -> m (Maybe SVGLengthList)
getAnimVal self
  = liftIO
      ((js_getAnimVal (unSVGAnimatedLengthList self)) >>= fromJSRef)
#else
module GHCJS.DOM.SVGAnimatedLengthList (
  ) where
#endif
