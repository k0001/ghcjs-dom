{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSFontFaceLoadEvent
       (js_getFontface, getFontface, js_getError, getError,
        CSSFontFaceLoadEvent, castToCSSFontFaceLoadEvent,
        gTypeCSSFontFaceLoadEvent)
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

 
foreign import javascript unsafe "$1[\"fontface\"]" js_getFontface
        :: JSRef CSSFontFaceLoadEvent -> IO (JSRef CSSFontFaceRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.fontface Mozilla CSSFontFaceLoadEvent.fontface documentation> 
getFontface ::
            (MonadIO m) => CSSFontFaceLoadEvent -> m (Maybe CSSFontFaceRule)
getFontface self
  = liftIO
      ((js_getFontface (unCSSFontFaceLoadEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"error\"]" js_getError ::
        JSRef CSSFontFaceLoadEvent -> IO (JSRef DOMError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.error Mozilla CSSFontFaceLoadEvent.error documentation> 
getError ::
         (MonadIO m) => CSSFontFaceLoadEvent -> m (Maybe DOMError)
getError self
  = liftIO
      ((js_getError (unCSSFontFaceLoadEvent self)) >>= fromJSRef)
#else
module GHCJS.DOM.CSSFontFaceLoadEvent (
  ) where
#endif
