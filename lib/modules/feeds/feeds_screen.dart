import 'package:Social_application/shared/constants.dart';
import 'package:Social_application/styles/icon_broken.dart';
import 'package:flutter/material.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
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
                      'https://img.freepik.com/free-photo/full-shot-travel-concept-with-landmarks_23-2149153258.jpg?3&w=996&t=st=1678798627~exp=1678799227~hmac=0f158997e20ee65e0bb05b4c07ea49f86e89db53096f1d783ce4ee2aa99420f6'
                      ,),
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
          ListView.separated(
            shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => buildPostItem(context),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10.0,
            ),
            itemCount: 10,
          ),
          const SizedBox(
            height: 8.0,
          ),

        ],
      ),
    );
  }
  Widget buildPostItem(context) => Container(
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
                    'https://img.freepik.com/free-photo/full-shot-travel-concept-with-landmarks_23-2149153258.jpg?3&w=996&t=st=1678798627~exp=1678799227~hmac=0f158997e20ee65e0bb05b4c07ea49f86e89db53096f1d783ce4ee2aa99420f6',
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
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 20.0,
              ),
              child: Container(
                width: double.infinity,
                height: 1.0,
                color: defaultColor,
              ),
            ),
            Text(
              ''
                  'This page shares my best articles to read on topics like health, happiness, creativity, productivity and more. The central question that drives my work is, “How can we live better?” To answer that question, I like to write about science-based ways to solve practical problems.',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                height: 1.3,
              ),
            ),
            Container(
              width: double.infinity,
              child: Wrap(
                children: [
                  Container(
                    height: 20.0,
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      child:  Text(
                        '#SOFTWARE',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: defaultColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 20.0,
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      child:  Text(
                        '#SOFTWARE_devolopment',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: defaultColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 20.0,
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      child:  Text(
                        '#SOFTWARE',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: defaultColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 20.0,
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      child:  Text(
                        '#SOFTWARE',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: defaultColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 20.0,
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      child:  Text(
                        '#SOFTWARE',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: defaultColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              height: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  5.0,
                ),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://img.freepik.com/free-photo/full-shot-travel-concept-with-landmarks_23-2149153258.jpg?3&w=996&t=st=1678798627~exp=1678799227~hmac=0f158997e20ee65e0bb05b4c07ea49f86e89db53096f1d783ce4ee2aa99420f6',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            IconBroken.Heart,
                            color: Colors.orange,
                            size: 20.0,
                          ),
                          Text(
                            '200',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Colors.orange
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(
                          IconBroken.Chat,
                          color: Colors.orange,
                          size: 20.0,
                        ),
                        const SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          '200 comments',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10.0,
              ),
              child: Container(
                width: double.infinity,
                height: 1.0,
                color: defaultColor,
              ),
            ), //ده الخط الي بين الصور والكلام
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 10.0,
                          backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-photo/full-shot-travel-concept-with-landmarks_23-2149153258.jpg?3&w=996&t=st=1678798627~exp=1678799227~hmac=0f158997e20ee65e0bb05b4c07ea49f86e89db53096f1d783ce4ee2aa99420f6',
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          'write a comment ...',
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
                    onTap: () {},
                  ),
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(
                          IconBroken.Heart,
                          color: Colors.orange,
                          size: 20.0,
                        ),
                        Text(
                          'like',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.orange
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  ) ;
}
