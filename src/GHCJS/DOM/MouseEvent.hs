{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MouseEvent
       (ghcjs_dom_mouse_event_init_mouse_event, mouseEventInitMouseEvent,
        ghcjs_dom_mouse_event_get_screen_x, mouseEventGetScreenX,
        ghcjs_dom_mouse_event_get_screen_y, mouseEventGetScreenY,
        ghcjs_dom_mouse_event_get_client_x, mouseEventGetClientX,
        ghcjs_dom_mouse_event_get_client_y, mouseEventGetClientY,
        ghcjs_dom_mouse_event_get_ctrl_key, mouseEventGetCtrlKey,
        ghcjs_dom_mouse_event_get_shift_key, mouseEventGetShiftKey,
        ghcjs_dom_mouse_event_get_alt_key, mouseEventGetAltKey,
        ghcjs_dom_mouse_event_get_meta_key, mouseEventGetMetaKey,
        ghcjs_dom_mouse_event_get_button, mouseEventGetButton,
        ghcjs_dom_mouse_event_get_related_target,
        mouseEventGetRelatedTarget, ghcjs_dom_mouse_event_get_movement_x,
        mouseEventGetMovementX, ghcjs_dom_mouse_event_get_movement_y,
        mouseEventGetMovementY, ghcjs_dom_mouse_event_get_offset_x,
        mouseEventGetOffsetX, ghcjs_dom_mouse_event_get_offset_y,
        mouseEventGetOffsetY, ghcjs_dom_mouse_event_get_x, mouseEventGetX,
        ghcjs_dom_mouse_event_get_y, mouseEventGetY,
        ghcjs_dom_mouse_event_get_from_element, mouseEventGetFromElement,
        ghcjs_dom_mouse_event_get_to_element, mouseEventGetToElement,
        MouseEvent, IsMouseEvent, castToMouseEvent, gTypeMouseEvent,
        toMouseEvent)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "$1[\"initMouseEvent\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11,\n$12, $13, $14, $15, $16)"
        ghcjs_dom_mouse_event_init_mouse_event ::
        JSRef MouseEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSRef DOMWindow ->
                  Int ->
                    Int ->
                      Int ->
                        Int ->
                          Int ->
                            Bool -> Bool -> Bool -> Bool -> Word -> JSRef EventTarget -> IO ()
#else 
ghcjs_dom_mouse_event_init_mouse_event ::
                                         JSRef MouseEvent ->
                                           JSString ->
                                             Bool ->
                                               Bool ->
                                                 JSRef DOMWindow ->
                                                   Int ->
                                                     Int ->
                                                       Int ->
                                                         Int ->
                                                           Int ->
                                                             Bool ->
                                                               Bool ->
                                                                 Bool ->
                                                                   Bool ->
                                                                     Word ->
                                                                       JSRef EventTarget -> IO ()
ghcjs_dom_mouse_event_init_mouse_event = undefined
#endif
 
mouseEventInitMouseEvent ::
                         (IsMouseEvent self, ToJSString type', IsDOMWindow view,
                          IsEventTarget relatedTarget) =>
                           self ->
                             type' ->
                               Bool ->
                                 Bool ->
                                   Maybe view ->
                                     Int ->
                                       Int ->
                                         Int ->
                                           Int ->
                                             Int ->
                                               Bool ->
                                                 Bool ->
                                                   Bool ->
                                                     Bool -> Word -> Maybe relatedTarget -> IO ()
mouseEventInitMouseEvent self type' canBubble cancelable view
  detail screenX screenY clientX clientY ctrlKey altKey shiftKey
  metaKey button relatedTarget
  = ghcjs_dom_mouse_event_init_mouse_event
      (unMouseEvent (toMouseEvent self))
      (toJSString type')
      canBubble
      cancelable
      (maybe jsNull (unDOMWindow . toDOMWindow) view)
      detail
      screenX
      screenY
      clientX
      clientY
      ctrlKey
      altKey
      shiftKey
      metaKey
      button
      (maybe jsNull (unEventTarget . toEventTarget) relatedTarget)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"screenX\"]"
        ghcjs_dom_mouse_event_get_screen_x :: JSRef MouseEvent -> IO Int
#else 
ghcjs_dom_mouse_event_get_screen_x :: JSRef MouseEvent -> IO Int
ghcjs_dom_mouse_event_get_screen_x = undefined
#endif
 
mouseEventGetScreenX :: (IsMouseEvent self) => self -> IO Int
mouseEventGetScreenX self
  = ghcjs_dom_mouse_event_get_screen_x
      (unMouseEvent (toMouseEvent self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"screenY\"]"
        ghcjs_dom_mouse_event_get_screen_y :: JSRef MouseEvent -> IO Int
#else 
ghcjs_dom_mouse_event_get_screen_y :: JSRef MouseEvent -> IO Int
ghcjs_dom_mouse_event_get_screen_y = undefined
#endif
 
mouseEventGetScreenY :: (IsMouseEvent self) => self -> IO Int
mouseEventGetScreenY self
  = ghcjs_dom_mouse_event_get_screen_y
      (unMouseEvent (toMouseEvent self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"clientX\"]"
        ghcjs_dom_mouse_event_get_client_x :: JSRef MouseEvent -> IO Int
#else 
ghcjs_dom_mouse_event_get_client_x :: JSRef MouseEvent -> IO Int
ghcjs_dom_mouse_event_get_client_x = undefined
#endif
 
mouseEventGetClientX :: (IsMouseEvent self) => self -> IO Int
mouseEventGetClientX self
  = ghcjs_dom_mouse_event_get_client_x
      (unMouseEvent (toMouseEvent self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"clientY\"]"
        ghcjs_dom_mouse_event_get_client_y :: JSRef MouseEvent -> IO Int
#else 
ghcjs_dom_mouse_event_get_client_y :: JSRef MouseEvent -> IO Int
ghcjs_dom_mouse_event_get_client_y = undefined
#endif
 
mouseEventGetClientY :: (IsMouseEvent self) => self -> IO Int
mouseEventGetClientY self
  = ghcjs_dom_mouse_event_get_client_y
      (unMouseEvent (toMouseEvent self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"ctrlKey\"] ? 1 : 0)"
        ghcjs_dom_mouse_event_get_ctrl_key :: JSRef MouseEvent -> IO Bool
#else 
ghcjs_dom_mouse_event_get_ctrl_key :: JSRef MouseEvent -> IO Bool
ghcjs_dom_mouse_event_get_ctrl_key = undefined
#endif
 
mouseEventGetCtrlKey :: (IsMouseEvent self) => self -> IO Bool
mouseEventGetCtrlKey self
  = ghcjs_dom_mouse_event_get_ctrl_key
      (unMouseEvent (toMouseEvent self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"shiftKey\"] ? 1 : 0)"
        ghcjs_dom_mouse_event_get_shift_key :: JSRef MouseEvent -> IO Bool
#else 
ghcjs_dom_mouse_event_get_shift_key :: JSRef MouseEvent -> IO Bool
ghcjs_dom_mouse_event_get_shift_key = undefined
#endif
 
mouseEventGetShiftKey :: (IsMouseEvent self) => self -> IO Bool
mouseEventGetShiftKey self
  = ghcjs_dom_mouse_event_get_shift_key
      (unMouseEvent (toMouseEvent self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"altKey\"] ? 1 : 0)"
        ghcjs_dom_mouse_event_get_alt_key :: JSRef MouseEvent -> IO Bool
#else 
ghcjs_dom_mouse_event_get_alt_key :: JSRef MouseEvent -> IO Bool
ghcjs_dom_mouse_event_get_alt_key = undefined
#endif
 
mouseEventGetAltKey :: (IsMouseEvent self) => self -> IO Bool
mouseEventGetAltKey self
  = ghcjs_dom_mouse_event_get_alt_key
      (unMouseEvent (toMouseEvent self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"metaKey\"] ? 1 : 0)"
        ghcjs_dom_mouse_event_get_meta_key :: JSRef MouseEvent -> IO Bool
#else 
ghcjs_dom_mouse_event_get_meta_key :: JSRef MouseEvent -> IO Bool
ghcjs_dom_mouse_event_get_meta_key = undefined
#endif
 
mouseEventGetMetaKey :: (IsMouseEvent self) => self -> IO Bool
mouseEventGetMetaKey self
  = ghcjs_dom_mouse_event_get_meta_key
      (unMouseEvent (toMouseEvent self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"button\"]"
        ghcjs_dom_mouse_event_get_button :: JSRef MouseEvent -> IO Word
#else 
ghcjs_dom_mouse_event_get_button :: JSRef MouseEvent -> IO Word
ghcjs_dom_mouse_event_get_button = undefined
#endif
 
mouseEventGetButton :: (IsMouseEvent self) => self -> IO Word
mouseEventGetButton self
  = ghcjs_dom_mouse_event_get_button
      (unMouseEvent (toMouseEvent self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"relatedTarget\"]"
        ghcjs_dom_mouse_event_get_related_target ::
        JSRef MouseEvent -> IO (JSRef EventTarget)
#else 
ghcjs_dom_mouse_event_get_related_target ::
                                           JSRef MouseEvent -> IO (JSRef EventTarget)
ghcjs_dom_mouse_event_get_related_target = undefined
#endif
 
mouseEventGetRelatedTarget ::
                           (IsMouseEvent self) => self -> IO (Maybe EventTarget)
mouseEventGetRelatedTarget self
  = fmap EventTarget . maybeJSNull <$>
      (ghcjs_dom_mouse_event_get_related_target
         (unMouseEvent (toMouseEvent self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"movementX\"]"
        ghcjs_dom_mouse_event_get_movement_x :: JSRef MouseEvent -> IO Int
#else 
ghcjs_dom_mouse_event_get_movement_x :: JSRef MouseEvent -> IO Int
ghcjs_dom_mouse_event_get_movement_x = undefined
#endif
 
mouseEventGetMovementX :: (IsMouseEvent self) => self -> IO Int
mouseEventGetMovementX self
  = ghcjs_dom_mouse_event_get_movement_x
      (unMouseEvent (toMouseEvent self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"movementY\"]"
        ghcjs_dom_mouse_event_get_movement_y :: JSRef MouseEvent -> IO Int
#else 
ghcjs_dom_mouse_event_get_movement_y :: JSRef MouseEvent -> IO Int
ghcjs_dom_mouse_event_get_movement_y = undefined
#endif
 
mouseEventGetMovementY :: (IsMouseEvent self) => self -> IO Int
mouseEventGetMovementY self
  = ghcjs_dom_mouse_event_get_movement_y
      (unMouseEvent (toMouseEvent self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"offsetX\"]"
        ghcjs_dom_mouse_event_get_offset_x :: JSRef MouseEvent -> IO Int
#else 
ghcjs_dom_mouse_event_get_offset_x :: JSRef MouseEvent -> IO Int
ghcjs_dom_mouse_event_get_offset_x = undefined
#endif
 
mouseEventGetOffsetX :: (IsMouseEvent self) => self -> IO Int
mouseEventGetOffsetX self
  = ghcjs_dom_mouse_event_get_offset_x
      (unMouseEvent (toMouseEvent self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"offsetY\"]"
        ghcjs_dom_mouse_event_get_offset_y :: JSRef MouseEvent -> IO Int
#else 
ghcjs_dom_mouse_event_get_offset_y :: JSRef MouseEvent -> IO Int
ghcjs_dom_mouse_event_get_offset_y = undefined
#endif
 
mouseEventGetOffsetY :: (IsMouseEvent self) => self -> IO Int
mouseEventGetOffsetY self
  = ghcjs_dom_mouse_event_get_offset_y
      (unMouseEvent (toMouseEvent self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_mouse_event_get_x :: JSRef MouseEvent -> IO Int
#else 
ghcjs_dom_mouse_event_get_x :: JSRef MouseEvent -> IO Int
ghcjs_dom_mouse_event_get_x = undefined
#endif
 
mouseEventGetX :: (IsMouseEvent self) => self -> IO Int
mouseEventGetX self
  = ghcjs_dom_mouse_event_get_x (unMouseEvent (toMouseEvent self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_mouse_event_get_y :: JSRef MouseEvent -> IO Int
#else 
ghcjs_dom_mouse_event_get_y :: JSRef MouseEvent -> IO Int
ghcjs_dom_mouse_event_get_y = undefined
#endif
 
mouseEventGetY :: (IsMouseEvent self) => self -> IO Int
mouseEventGetY self
  = ghcjs_dom_mouse_event_get_y (unMouseEvent (toMouseEvent self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"fromElement\"]"
        ghcjs_dom_mouse_event_get_from_element ::
        JSRef MouseEvent -> IO (JSRef Node)
#else 
ghcjs_dom_mouse_event_get_from_element ::
                                         JSRef MouseEvent -> IO (JSRef Node)
ghcjs_dom_mouse_event_get_from_element = undefined
#endif
 
mouseEventGetFromElement ::
                         (IsMouseEvent self) => self -> IO (Maybe Node)
mouseEventGetFromElement self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_mouse_event_get_from_element
         (unMouseEvent (toMouseEvent self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"toElement\"]"
        ghcjs_dom_mouse_event_get_to_element ::
        JSRef MouseEvent -> IO (JSRef Node)
#else 
ghcjs_dom_mouse_event_get_to_element ::
                                       JSRef MouseEvent -> IO (JSRef Node)
ghcjs_dom_mouse_event_get_to_element = undefined
#endif
 
mouseEventGetToElement ::
                       (IsMouseEvent self) => self -> IO (Maybe Node)
mouseEventGetToElement self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_mouse_event_get_to_element
         (unMouseEvent (toMouseEvent self)))
#else
module GHCJS.DOM.MouseEvent (
  module Graphics.UI.Gtk.WebKit.DOM.MouseEvent
  ) where
import Graphics.UI.Gtk.WebKit.DOM.MouseEvent
#endif
