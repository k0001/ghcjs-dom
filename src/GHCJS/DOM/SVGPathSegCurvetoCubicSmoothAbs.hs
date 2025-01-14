{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoCubicSmoothAbs
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        js_setX2, setX2, js_getX2, getX2, js_setY2, setY2, js_getY2, getY2,
        SVGPathSegCurvetoCubicSmoothAbs,
        castToSVGPathSegCurvetoCubicSmoothAbs,
        gTypeSVGPathSegCurvetoCubicSmoothAbs)
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

 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.x Mozilla SVGPathSegCurvetoCubicSmoothAbs.x documentation> 
setX ::
     (MonadIO m) => SVGPathSegCurvetoCubicSmoothAbs -> Float -> m ()
setX self val
  = liftIO (js_setX (unSVGPathSegCurvetoCubicSmoothAbs self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.x Mozilla SVGPathSegCurvetoCubicSmoothAbs.x documentation> 
getX :: (MonadIO m) => SVGPathSegCurvetoCubicSmoothAbs -> m Float
getX self
  = liftIO (js_getX (unSVGPathSegCurvetoCubicSmoothAbs self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.y Mozilla SVGPathSegCurvetoCubicSmoothAbs.y documentation> 
setY ::
     (MonadIO m) => SVGPathSegCurvetoCubicSmoothAbs -> Float -> m ()
setY self val
  = liftIO (js_setY (unSVGPathSegCurvetoCubicSmoothAbs self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.y Mozilla SVGPathSegCurvetoCubicSmoothAbs.y documentation> 
getY :: (MonadIO m) => SVGPathSegCurvetoCubicSmoothAbs -> m Float
getY self
  = liftIO (js_getY (unSVGPathSegCurvetoCubicSmoothAbs self))
 
foreign import javascript unsafe "$1[\"x2\"] = $2;" js_setX2 ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.x2 Mozilla SVGPathSegCurvetoCubicSmoothAbs.x2 documentation> 
setX2 ::
      (MonadIO m) => SVGPathSegCurvetoCubicSmoothAbs -> Float -> m ()
setX2 self val
  = liftIO (js_setX2 (unSVGPathSegCurvetoCubicSmoothAbs self) val)
 
foreign import javascript unsafe "$1[\"x2\"]" js_getX2 ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.x2 Mozilla SVGPathSegCurvetoCubicSmoothAbs.x2 documentation> 
getX2 :: (MonadIO m) => SVGPathSegCurvetoCubicSmoothAbs -> m Float
getX2 self
  = liftIO (js_getX2 (unSVGPathSegCurvetoCubicSmoothAbs self))
 
foreign import javascript unsafe "$1[\"y2\"] = $2;" js_setY2 ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.y2 Mozilla SVGPathSegCurvetoCubicSmoothAbs.y2 documentation> 
setY2 ::
      (MonadIO m) => SVGPathSegCurvetoCubicSmoothAbs -> Float -> m ()
setY2 self val
  = liftIO (js_setY2 (unSVGPathSegCurvetoCubicSmoothAbs self) val)
 
foreign import javascript unsafe "$1[\"y2\"]" js_getY2 ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.y2 Mozilla SVGPathSegCurvetoCubicSmoothAbs.y2 documentation> 
getY2 :: (MonadIO m) => SVGPathSegCurvetoCubicSmoothAbs -> m Float
getY2 self
  = liftIO (js_getY2 (unSVGPathSegCurvetoCubicSmoothAbs self))
#else
module GHCJS.DOM.SVGPathSegCurvetoCubicSmoothAbs (
  ) where
#endif
