import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(        
        appBar: AppBar(
          //elevation: 10,
          title: const Text('Keanu 🖤🤺'),
          //centerTitle: true,
          leading: const Padding(            
            padding: EdgeInsets.only(left: 15.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://img.ecartelera.com/noticias/72300/72324-h4.jpg'),
              
            ),
          ),
        ),
        body: const _ChatView()
      );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: 
              ListView.builder(    
                controller: chatProvider.chatScrollController,  
                itemCount: chatProvider.messagesList.length,          
                itemBuilder: (context, index){                
                  final message = chatProvider.messagesList[index];

                  return ( message.fromWho == FromWho.hers )
                    ? HerMessageBubble( message: message )
                    : MyMessageBubble( message: message,);

              } )
            ),
            
            // Caja de Texto
            MessageFieldBox(
              //onValue: (text) => chatProvider.sendMessage(text)
              onValue: chatProvider.sendMessage
            ),
          ],
        ),
      ),
    );
  }
}