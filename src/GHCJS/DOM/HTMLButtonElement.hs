{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLButtonElement
       (js_checkValidity, checkValidity, js_setCustomValidity,
        setCustomValidity, js_setAutofocus, setAutofocus, js_getAutofocus,
        getAutofocus, js_setDisabled, setDisabled, js_getDisabled,
        getDisabled, js_getForm, getForm, js_setFormAction, setFormAction,
        js_getFormAction, getFormAction, js_setFormEnctype, setFormEnctype,
        js_getFormEnctype, getFormEnctype, js_setFormMethod, setFormMethod,
        js_getFormMethod, getFormMethod, js_setFormNoValidate,
        setFormNoValidate, js_getFormNoValidate, getFormNoValidate,
        js_setFormTarget, setFormTarget, js_getFormTarget, getFormTarget,
        js_setName, setName, js_getName, getName, js_setValue, setValue,
        js_getValue, getValue, js_getWillValidate, getWillValidate,
        js_getValidity, getValidity, js_getValidationMessage,
        getValidationMessage, js_getLabels, getLabels, HTMLButtonElement,
        castToHTMLButtonElement, gTypeHTMLButtonElement)
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

 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)" js_checkValidity ::
        JSRef HTMLButtonElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.checkValidity Mozilla HTMLButtonElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLButtonElement -> m Bool
checkValidity self
  = liftIO (js_checkValidity (unHTMLButtonElement self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        js_setCustomValidity ::
        JSRef HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.setCustomValidity Mozilla HTMLButtonElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadIO m, ToJSString error) => HTMLButtonElement -> error -> m ()
setCustomValidity self error
  = liftIO
      (js_setCustomValidity (unHTMLButtonElement self)
         (toJSString error))
 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        js_setAutofocus :: JSRef HTMLButtonElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.autofocus Mozilla HTMLButtonElement.autofocus documentation> 
setAutofocus :: (MonadIO m) => HTMLButtonElement -> Bool -> m ()
setAutofocus self val
  = liftIO (js_setAutofocus (unHTMLButtonElement self) val)
 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        js_getAutofocus :: JSRef HTMLButtonElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.autofocus Mozilla HTMLButtonElement.autofocus documentation> 
getAutofocus :: (MonadIO m) => HTMLButtonElement -> m Bool
getAutofocus self
  = liftIO (js_getAutofocus (unHTMLButtonElement self))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: JSRef HTMLButtonElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.disabled Mozilla HTMLButtonElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLButtonElement -> Bool -> m ()
setDisabled self val
  = liftIO (js_setDisabled (unHTMLButtonElement self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: JSRef HTMLButtonElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.disabled Mozilla HTMLButtonElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLButtonElement -> m Bool
getDisabled self
  = liftIO (js_getDisabled (unHTMLButtonElement self))
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        JSRef HTMLButtonElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.form Mozilla HTMLButtonElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLButtonElement -> m (Maybe HTMLFormElement)
getForm self
  = liftIO ((js_getForm (unHTMLButtonElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"formAction\"] = $2;"
        js_setFormAction :: JSRef HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formAction Mozilla HTMLButtonElement.formAction documentation> 
setFormAction ::
              (MonadIO m, ToJSString val) => HTMLButtonElement -> val -> m ()
setFormAction self val
  = liftIO
      (js_setFormAction (unHTMLButtonElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"formAction\"]"
        js_getFormAction :: JSRef HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formAction Mozilla HTMLButtonElement.formAction documentation> 
getFormAction ::
              (MonadIO m, FromJSString result) => HTMLButtonElement -> m result
getFormAction self
  = liftIO
      (fromJSString <$> (js_getFormAction (unHTMLButtonElement self)))
 
foreign import javascript unsafe "$1[\"formEnctype\"] = $2;"
        js_setFormEnctype :: JSRef HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formEnctype Mozilla HTMLButtonElement.formEnctype documentation> 
setFormEnctype ::
               (MonadIO m, ToJSString val) => HTMLButtonElement -> val -> m ()
setFormEnctype self val
  = liftIO
      (js_setFormEnctype (unHTMLButtonElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"formEnctype\"]"
        js_getFormEnctype :: JSRef HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formEnctype Mozilla HTMLButtonElement.formEnctype documentation> 
getFormEnctype ::
               (MonadIO m, FromJSString result) => HTMLButtonElement -> m result
getFormEnctype self
  = liftIO
      (fromJSString <$> (js_getFormEnctype (unHTMLButtonElement self)))
 
foreign import javascript unsafe "$1[\"formMethod\"] = $2;"
        js_setFormMethod :: JSRef HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formMethod Mozilla HTMLButtonElement.formMethod documentation> 
setFormMethod ::
              (MonadIO m, ToJSString val) => HTMLButtonElement -> val -> m ()
setFormMethod self val
  = liftIO
      (js_setFormMethod (unHTMLButtonElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"formMethod\"]"
        js_getFormMethod :: JSRef HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formMethod Mozilla HTMLButtonElement.formMethod documentation> 
getFormMethod ::
              (MonadIO m, FromJSString result) => HTMLButtonElement -> m result
getFormMethod self
  = liftIO
      (fromJSString <$> (js_getFormMethod (unHTMLButtonElement self)))
 
foreign import javascript unsafe "$1[\"formNoValidate\"] = $2;"
        js_setFormNoValidate :: JSRef HTMLButtonElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formNoValidate Mozilla HTMLButtonElement.formNoValidate documentation> 
setFormNoValidate ::
                  (MonadIO m) => HTMLButtonElement -> Bool -> m ()
setFormNoValidate self val
  = liftIO (js_setFormNoValidate (unHTMLButtonElement self) val)
 
foreign import javascript unsafe "($1[\"formNoValidate\"] ? 1 : 0)"
        js_getFormNoValidate :: JSRef HTMLButtonElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formNoValidate Mozilla HTMLButtonElement.formNoValidate documentation> 
getFormNoValidate :: (MonadIO m) => HTMLButtonElement -> m Bool
getFormNoValidate self
  = liftIO (js_getFormNoValidate (unHTMLButtonElement self))
 
foreign import javascript unsafe "$1[\"formTarget\"] = $2;"
        js_setFormTarget :: JSRef HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formTarget Mozilla HTMLButtonElement.formTarget documentation> 
setFormTarget ::
              (MonadIO m, ToJSString val) => HTMLButtonElement -> val -> m ()
setFormTarget self val
  = liftIO
      (js_setFormTarget (unHTMLButtonElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"formTarget\"]"
        js_getFormTarget :: JSRef HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formTarget Mozilla HTMLButtonElement.formTarget documentation> 
getFormTarget ::
              (MonadIO m, FromJSString result) => HTMLButtonElement -> m result
getFormTarget self
  = liftIO
      (fromJSString <$> (js_getFormTarget (unHTMLButtonElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.name Mozilla HTMLButtonElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLButtonElement -> val -> m ()
setName self val
  = liftIO (js_setName (unHTMLButtonElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.name Mozilla HTMLButtonElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLButtonElement -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unHTMLButtonElement self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.value Mozilla HTMLButtonElement.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => HTMLButtonElement -> val -> m ()
setValue self val
  = liftIO (js_setValue (unHTMLButtonElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.value Mozilla HTMLButtonElement.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) => HTMLButtonElement -> m result
getValue self
  = liftIO
      (fromJSString <$> (js_getValue (unHTMLButtonElement self)))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        js_getWillValidate :: JSRef HTMLButtonElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.willValidate Mozilla HTMLButtonElement.willValidate documentation> 
getWillValidate :: (MonadIO m) => HTMLButtonElement -> m Bool
getWillValidate self
  = liftIO (js_getWillValidate (unHTMLButtonElement self))
 
foreign import javascript unsafe "$1[\"validity\"]" js_getValidity
        :: JSRef HTMLButtonElement -> IO (JSRef ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.validity Mozilla HTMLButtonElement.validity documentation> 
getValidity ::
            (MonadIO m) => HTMLButtonElement -> m (Maybe ValidityState)
getValidity self
  = liftIO
      ((js_getValidity (unHTMLButtonElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        js_getValidationMessage :: JSRef HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.validationMessage Mozilla HTMLButtonElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadIO m, FromJSString result) => HTMLButtonElement -> m result
getValidationMessage self
  = liftIO
      (fromJSString <$>
         (js_getValidationMessage (unHTMLButtonElement self)))
 
foreign import javascript unsafe "$1[\"labels\"]" js_getLabels ::
        JSRef HTMLButtonElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.labels Mozilla HTMLButtonElement.labels documentation> 
getLabels :: (MonadIO m) => HTMLButtonElement -> m (Maybe NodeList)
getLabels self
  = liftIO ((js_getLabels (unHTMLButtonElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.HTMLButtonElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLButtonElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLButtonElement
#endif
