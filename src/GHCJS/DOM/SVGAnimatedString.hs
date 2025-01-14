{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedString
       (js_setBaseVal, setBaseVal, js_getBaseVal, getBaseVal,
        js_getAnimVal, getAnimVal, SVGAnimatedString,
        castToSVGAnimatedString, gTypeSVGAnimatedString)
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

 
foreign import javascript unsafe "$1[\"baseVal\"] = $2;"
        js_setBaseVal :: JSRef SVGAnimatedString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString.baseVal Mozilla SVGAnimatedString.baseVal documentation> 
setBaseVal ::
           (MonadIO m, ToJSString val) => SVGAnimatedString -> val -> m ()
setBaseVal self val
  = liftIO
      (js_setBaseVal (unSVGAnimatedString self) (toJSString val))
 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        JSRef SVGAnimatedString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString.baseVal Mozilla SVGAnimatedString.baseVal documentation> 
getBaseVal ::
           (MonadIO m, FromJSString result) => SVGAnimatedString -> m result
getBaseVal self
  = liftIO
      (fromJSString <$> (js_getBaseVal (unSVGAnimatedString self)))
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        JSRef SVGAnimatedString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString.animVal Mozilla SVGAnimatedString.animVal documentation> 
getAnimVal ::
           (MonadIO m, FromJSString result) => SVGAnimatedString -> m result
getAnimVal self
  = liftIO
      (fromJSString <$> (js_getAnimVal (unSVGAnimatedString self)))
#else
module GHCJS.DOM.SVGAnimatedString (
  ) where
#endif
