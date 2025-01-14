{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGStringList
       (js_clear, clear, js_initialize, initialize, js_getItem, getItem,
        js_insertItemBefore, insertItemBefore, js_replaceItem, replaceItem,
        js_removeItem, removeItem, js_appendItem, appendItem,
        js_getNumberOfItems, getNumberOfItems, SVGStringList,
        castToSVGStringList, gTypeSVGStringList)
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

 
foreign import javascript unsafe "$1[\"clear\"]()" js_clear ::
        JSRef SVGStringList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.clear Mozilla SVGStringList.clear documentation> 
clear :: (MonadIO m) => SVGStringList -> m ()
clear self = liftIO (js_clear (unSVGStringList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        js_initialize :: JSRef SVGStringList -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.initialize Mozilla SVGStringList.initialize documentation> 
initialize ::
           (MonadIO m, ToJSString item, FromJSString result) =>
             SVGStringList -> item -> m result
initialize self item
  = liftIO
      (fromJSString <$>
         (js_initialize (unSVGStringList self) (toJSString item)))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: JSRef SVGStringList -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.getItem Mozilla SVGStringList.getItem documentation> 
getItem ::
        (MonadIO m, FromJSString result) =>
          SVGStringList -> Word -> m result
getItem self index
  = liftIO
      (fromJSString <$> (js_getItem (unSVGStringList self) index))
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        JSRef SVGStringList -> JSString -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.insertItemBefore Mozilla SVGStringList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m, ToJSString item, FromJSString result) =>
                   SVGStringList -> item -> Word -> m result
insertItemBefore self item index
  = liftIO
      (fromJSString <$>
         (js_insertItemBefore (unSVGStringList self) (toJSString item)
            index))
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        JSRef SVGStringList -> JSString -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.replaceItem Mozilla SVGStringList.replaceItem documentation> 
replaceItem ::
            (MonadIO m, ToJSString item, FromJSString result) =>
              SVGStringList -> item -> Word -> m result
replaceItem self item index
  = liftIO
      (fromJSString <$>
         (js_replaceItem (unSVGStringList self) (toJSString item) index))
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem :: JSRef SVGStringList -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.removeItem Mozilla SVGStringList.removeItem documentation> 
removeItem ::
           (MonadIO m, FromJSString result) =>
             SVGStringList -> Word -> m result
removeItem self index
  = liftIO
      (fromJSString <$> (js_removeItem (unSVGStringList self) index))
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        js_appendItem :: JSRef SVGStringList -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.appendItem Mozilla SVGStringList.appendItem documentation> 
appendItem ::
           (MonadIO m, ToJSString item, FromJSString result) =>
             SVGStringList -> item -> m result
appendItem self item
  = liftIO
      (fromJSString <$>
         (js_appendItem (unSVGStringList self) (toJSString item)))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: JSRef SVGStringList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.numberOfItems Mozilla SVGStringList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGStringList -> m Word
getNumberOfItems self
  = liftIO (js_getNumberOfItems (unSVGStringList self))
#else
module GHCJS.DOM.SVGStringList (
  ) where
#endif
