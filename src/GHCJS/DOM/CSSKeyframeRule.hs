{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSKeyframeRule
       (js_setKeyText, setKeyText, js_getKeyText, getKeyText, js_getStyle,
        getStyle, CSSKeyframeRule, castToCSSKeyframeRule,
        gTypeCSSKeyframeRule)
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

 
foreign import javascript unsafe "$1[\"keyText\"] = $2;"
        js_setKeyText :: JSRef CSSKeyframeRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule.keyText Mozilla CSSKeyframeRule.keyText documentation> 
setKeyText ::
           (MonadIO m, ToJSString val) => CSSKeyframeRule -> val -> m ()
setKeyText self val
  = liftIO (js_setKeyText (unCSSKeyframeRule self) (toJSString val))
 
foreign import javascript unsafe "$1[\"keyText\"]" js_getKeyText ::
        JSRef CSSKeyframeRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule.keyText Mozilla CSSKeyframeRule.keyText documentation> 
getKeyText ::
           (MonadIO m, FromJSString result) => CSSKeyframeRule -> m result
getKeyText self
  = liftIO
      (fromJSString <$> (js_getKeyText (unCSSKeyframeRule self)))
 
foreign import javascript unsafe "$1[\"style\"]" js_getStyle ::
        JSRef CSSKeyframeRule -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule.style Mozilla CSSKeyframeRule.style documentation> 
getStyle ::
         (MonadIO m) => CSSKeyframeRule -> m (Maybe CSSStyleDeclaration)
getStyle self
  = liftIO ((js_getStyle (unCSSKeyframeRule self)) >>= fromJSRef)
#else
module GHCJS.DOM.CSSKeyframeRule (
  ) where
#endif
