<?php if (!defined('APPLICATION')) exit();
if ($this->ConversationID > 0)
<<<<<<< HEAD:applications/conversations/views/modules/clearhistory.php
   echo Anchor(Gdn::Translate('Clear Conversation History'), '/messages/clear/'.$this->ConversationID, 'ClearConversation');
=======
   echo Anchor(T('Clear Conversation History'), '/messages/clear/'.$this->ConversationID, 'ClearConversation');
>>>>>>> 6279c97ad1cab504f82a1f98298b36d7e08a3c94:applications/conversations/views/modules/clearhistory.php
