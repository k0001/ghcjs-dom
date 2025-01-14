{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEConvolveMatrixElement
       (pattern SVG_EDGEMODE_UNKNOWN, pattern SVG_EDGEMODE_DUPLICATE,
        pattern SVG_EDGEMODE_WRAP, pattern SVG_EDGEMODE_NONE, js_getIn1,
        getIn1, js_getOrderX, getOrderX, js_getOrderY, getOrderY,
        js_getKernelMatrix, getKernelMatrix, js_getDivisor, getDivisor,
        js_getBias, getBias, js_getTargetX, getTargetX, js_getTargetY,
        getTargetY, js_getEdgeMode, getEdgeMode, js_getKernelUnitLengthX,
        getKernelUnitLengthX, js_getKernelUnitLengthY,
        getKernelUnitLengthY, js_getPreserveAlpha, getPreserveAlpha,
        SVGFEConvolveMatrixElement, castToSVGFEConvolveMatrixElement,
        gTypeSVGFEConvolveMatrixElement)
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

pattern SVG_EDGEMODE_UNKNOWN = 0
pattern SVG_EDGEMODE_DUPLICATE = 1
pattern SVG_EDGEMODE_WRAP = 2
pattern SVG_EDGEMODE_NONE = 3
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.in1 Mozilla SVGFEConvolveMatrixElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedString)
getIn1 self
  = liftIO
      ((js_getIn1 (unSVGFEConvolveMatrixElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"orderX\"]" js_getOrderX ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderX Mozilla SVGFEConvolveMatrixElement.orderX documentation> 
getOrderX ::
          (MonadIO m) =>
            SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getOrderX self
  = liftIO
      ((js_getOrderX (unSVGFEConvolveMatrixElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"orderY\"]" js_getOrderY ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderY Mozilla SVGFEConvolveMatrixElement.orderY documentation> 
getOrderY ::
          (MonadIO m) =>
            SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getOrderY self
  = liftIO
      ((js_getOrderY (unSVGFEConvolveMatrixElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"kernelMatrix\"]"
        js_getKernelMatrix ::
        JSRef SVGFEConvolveMatrixElement ->
          IO (JSRef SVGAnimatedNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelMatrix Mozilla SVGFEConvolveMatrixElement.kernelMatrix documentation> 
getKernelMatrix ::
                (MonadIO m) =>
                  SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumberList)
getKernelMatrix self
  = liftIO
      ((js_getKernelMatrix (unSVGFEConvolveMatrixElement self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"divisor\"]" js_getDivisor ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.divisor Mozilla SVGFEConvolveMatrixElement.divisor documentation> 
getDivisor ::
           (MonadIO m) =>
             SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getDivisor self
  = liftIO
      ((js_getDivisor (unSVGFEConvolveMatrixElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"bias\"]" js_getBias ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.bias Mozilla SVGFEConvolveMatrixElement.bias documentation> 
getBias ::
        (MonadIO m) =>
          SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getBias self
  = liftIO
      ((js_getBias (unSVGFEConvolveMatrixElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"targetX\"]" js_getTargetX ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetX Mozilla SVGFEConvolveMatrixElement.targetX documentation> 
getTargetX ::
           (MonadIO m) =>
             SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getTargetX self
  = liftIO
      ((js_getTargetX (unSVGFEConvolveMatrixElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"targetY\"]" js_getTargetY ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetY Mozilla SVGFEConvolveMatrixElement.targetY documentation> 
getTargetY ::
           (MonadIO m) =>
             SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getTargetY self
  = liftIO
      ((js_getTargetY (unSVGFEConvolveMatrixElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"edgeMode\"]" js_getEdgeMode
        ::
        JSRef SVGFEConvolveMatrixElement ->
          IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.edgeMode Mozilla SVGFEConvolveMatrixElement.edgeMode documentation> 
getEdgeMode ::
            (MonadIO m) =>
              SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedEnumeration)
getEdgeMode self
  = liftIO
      ((js_getEdgeMode (unSVGFEConvolveMatrixElement self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"kernelUnitLengthX\"]"
        js_getKernelUnitLengthX ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthX Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthX documentation> 
getKernelUnitLengthX ::
                     (MonadIO m) =>
                       SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthX self
  = liftIO
      ((js_getKernelUnitLengthX (unSVGFEConvolveMatrixElement self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"kernelUnitLengthY\"]"
        js_getKernelUnitLengthY ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthY Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthY documentation> 
getKernelUnitLengthY ::
                     (MonadIO m) =>
                       SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthY self
  = liftIO
      ((js_getKernelUnitLengthY (unSVGFEConvolveMatrixElement self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"preserveAlpha\"]"
        js_getPreserveAlpha ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedBoolean)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.preserveAlpha Mozilla SVGFEConvolveMatrixElement.preserveAlpha documentation> 
getPreserveAlpha ::
                 (MonadIO m) =>
                   SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedBoolean)
getPreserveAlpha self
  = liftIO
      ((js_getPreserveAlpha (unSVGFEConvolveMatrixElement self)) >>=
         fromJSRef)
#else
module GHCJS.DOM.SVGFEConvolveMatrixElement (
  ) where
#endif
