{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSPrimitiveValue
       (js_setFloatValue, setFloatValue, js_getFloatValue, getFloatValue,
        js_setStringValue, setStringValue, js_getStringValue,
        getStringValue, js_getCounterValue, getCounterValue,
        js_getRectValue, getRectValue, js_getRGBColorValue,
        getRGBColorValue, pattern CSS_UNKNOWN, pattern CSS_NUMBER,
        pattern CSS_PERCENTAGE, pattern CSS_EMS, pattern CSS_EXS,
        pattern CSS_PX, pattern CSS_CM, pattern CSS_MM, pattern CSS_IN,
        pattern CSS_PT, pattern CSS_PC, pattern CSS_DEG, pattern CSS_RAD,
        pattern CSS_GRAD, pattern CSS_MS, pattern CSS_S, pattern CSS_HZ,
        pattern CSS_KHZ, pattern CSS_DIMENSION, pattern CSS_STRING,
        pattern CSS_URI, pattern CSS_IDENT, pattern CSS_ATTR,
        pattern CSS_COUNTER, pattern CSS_RECT, pattern CSS_RGBCOLOR,
        pattern CSS_VW, pattern CSS_VH, pattern CSS_VMIN, pattern CSS_VMAX,
        js_getPrimitiveType, getPrimitiveType, CSSPrimitiveValue,
        castToCSSPrimitiveValue, gTypeCSSPrimitiveValue)
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

 
foreign import javascript unsafe "$1[\"setFloatValue\"]($2, $3)"
        js_setFloatValue ::
        JSRef CSSPrimitiveValue -> Word -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.setFloatValue Mozilla CSSPrimitiveValue.setFloatValue documentation> 
setFloatValue ::
              (MonadIO m) => CSSPrimitiveValue -> Word -> Float -> m ()
setFloatValue self unitType floatValue
  = liftIO
      (js_setFloatValue (unCSSPrimitiveValue self) unitType floatValue)
 
foreign import javascript unsafe "$1[\"getFloatValue\"]($2)"
        js_getFloatValue :: JSRef CSSPrimitiveValue -> Word -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getFloatValue Mozilla CSSPrimitiveValue.getFloatValue documentation> 
getFloatValue ::
              (MonadIO m) => CSSPrimitiveValue -> Word -> m Float
getFloatValue self unitType
  = liftIO (js_getFloatValue (unCSSPrimitiveValue self) unitType)
 
foreign import javascript unsafe "$1[\"setStringValue\"]($2, $3)"
        js_setStringValue ::
        JSRef CSSPrimitiveValue -> Word -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.setStringValue Mozilla CSSPrimitiveValue.setStringValue documentation> 
setStringValue ::
               (MonadIO m, ToJSString stringValue) =>
                 CSSPrimitiveValue -> Word -> stringValue -> m ()
setStringValue self stringType stringValue
  = liftIO
      (js_setStringValue (unCSSPrimitiveValue self) stringType
         (toJSString stringValue))
 
foreign import javascript unsafe "$1[\"getStringValue\"]()"
        js_getStringValue :: JSRef CSSPrimitiveValue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getStringValue Mozilla CSSPrimitiveValue.getStringValue documentation> 
getStringValue ::
               (MonadIO m, FromJSString result) => CSSPrimitiveValue -> m result
getStringValue self
  = liftIO
      (fromJSString <$> (js_getStringValue (unCSSPrimitiveValue self)))
 
foreign import javascript unsafe "$1[\"getCounterValue\"]()"
        js_getCounterValue :: JSRef CSSPrimitiveValue -> IO (JSRef Counter)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getCounterValue Mozilla CSSPrimitiveValue.getCounterValue documentation> 
getCounterValue ::
                (MonadIO m) => CSSPrimitiveValue -> m (Maybe Counter)
getCounterValue self
  = liftIO
      ((js_getCounterValue (unCSSPrimitiveValue self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getRectValue\"]()"
        js_getRectValue :: JSRef CSSPrimitiveValue -> IO (JSRef Rect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getRectValue Mozilla CSSPrimitiveValue.getRectValue documentation> 
getRectValue :: (MonadIO m) => CSSPrimitiveValue -> m (Maybe Rect)
getRectValue self
  = liftIO
      ((js_getRectValue (unCSSPrimitiveValue self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getRGBColorValue\"]()"
        js_getRGBColorValue ::
        JSRef CSSPrimitiveValue -> IO (JSRef RGBColor)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getRGBColorValue Mozilla CSSPrimitiveValue.getRGBColorValue documentation> 
getRGBColorValue ::
                 (MonadIO m) => CSSPrimitiveValue -> m (Maybe RGBColor)
getRGBColorValue self
  = liftIO
      ((js_getRGBColorValue (unCSSPrimitiveValue self)) >>= fromJSRef)
pattern CSS_UNKNOWN = 0
pattern CSS_NUMBER = 1
pattern CSS_PERCENTAGE = 2
pattern CSS_EMS = 3
pattern CSS_EXS = 4
pattern CSS_PX = 5
pattern CSS_CM = 6
pattern CSS_MM = 7
pattern CSS_IN = 8
pattern CSS_PT = 9
pattern CSS_PC = 10
pattern CSS_DEG = 11
pattern CSS_RAD = 12
pattern CSS_GRAD = 13
pattern CSS_MS = 14
pattern CSS_S = 15
pattern CSS_HZ = 16
pattern CSS_KHZ = 17
pattern CSS_DIMENSION = 18
pattern CSS_STRING = 19
pattern CSS_URI = 20
pattern CSS_IDENT = 21
pattern CSS_ATTR = 22
pattern CSS_COUNTER = 23
pattern CSS_RECT = 24
pattern CSS_RGBCOLOR = 25
pattern CSS_VW = 26
pattern CSS_VH = 27
pattern CSS_VMIN = 28
pattern CSS_VMAX = 29
 
foreign import javascript unsafe "$1[\"primitiveType\"]"
        js_getPrimitiveType :: JSRef CSSPrimitiveValue -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.primitiveType Mozilla CSSPrimitiveValue.primitiveType documentation> 
getPrimitiveType :: (MonadIO m) => CSSPrimitiveValue -> m Word
getPrimitiveType self
  = liftIO (js_getPrimitiveType (unCSSPrimitiveValue self))
#else
module GHCJS.DOM.CSSPrimitiveValue (
  ) where
#endif
