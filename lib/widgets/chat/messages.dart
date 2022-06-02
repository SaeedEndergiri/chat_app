import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '/widgets/chat/message_bubble.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('chat')
          .orderBy(
            'sentAt',
            descending: true,
          )
          .snapshots(),
      builder: (ctx, AsyncSnapshot<QuerySnapshot> chatSnapshot) {
        if (chatSnapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final chatDocs = chatSnapshot.data!.docs;
        return Container(
          child: ListView.builder(
            reverse: true,
            itemCount: chatDocs.length,
            itemBuilder: (context, i) => MessageBubble(
              chatDocs[i]['text'],
              chatDocs[i]['username'],
              chatDocs[i]['userImage'],
              chatDocs[i]['userId'] == user!.uid,
              key: ValueKey(chatDocs[i].id),
            ),
          ),
        );
      },
    );
  }
}
