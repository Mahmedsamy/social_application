import 'package:Social_application/shared/constants.dart';
import 'package:flutter/material.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 20.0,
            margin: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                // const Image(
                //   image: AssetImage (
                //     'assets/images/full-shot-travel-concept-with-landmarks.jpg',
                //   ),
                //   fit: BoxFit.cover,
                //   height: 150.0,
                //   width: double.infinity,
                // ),
                const Image(
                  image: NetworkImage(
                    'https://img.freepik.com/free-photo/full-shot-travel-concept-with-landmarks_23-2149153258.jpg?3&w=996&t=st=1678798627~exp=1678799227~hmac=0f158997e20ee65e0bb05b4c07ea49f86e89db53096f1d783ce4ee2aa99420f6',
                  ),
                  fit: BoxFit.cover,
                  height: 150.0,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'communicate with friends',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 20.0,
              margin: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 15.0,
                          backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-photo/young-beautiful-cheerful-woman-walking-around-city-smiling-rejoicing_176420-1993.jpg?w=996&t=st=1678798274~exp=1678798874~hmac=b10ee69fbd867fd4c7d878512cb7d9e28a49e6c234a09bf34fc9bfdb50686c0a',
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Mohamed samy',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          height: 1.3,
                                        ),

                                    // style: TextStyle(color: Colors.black,
                                    //   fontFamily: 'Jannah',
                                    //   fontSize: 18.0,
                                    //   fontWeight: FontWeight.w600,),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  const Icon(
                                    Icons.check_circle,
                                    color: defaultColor,
                                    size: 16.0,
                                  ),
                                ],
                              ),
                              Text(
                                'may 21,2023 at 11:00pm',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      height: 1.3,
                                    ),
                                // style: TextStyle(
                                //   color: Colors.black,
                                // ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.more_horiz)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 1.0,
                        color: Colors.grey[300],
                      ),
                    ),
                    Text(''
                        'This page shares my best articles to read on topics like health, happiness, creativity, productivity and more. The central question that drives my work is, “How can we live better?” To answer that question, I like to write about science-based ways to solve practical problems.',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(
                        height: 1.3,
                      ),
                    ),

                  ],
                ),
              )),
        ),
      ],
    );
  }
}
