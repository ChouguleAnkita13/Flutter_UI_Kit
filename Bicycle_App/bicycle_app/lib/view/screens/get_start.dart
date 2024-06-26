import 'package:bicycle_app/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:bicycle_app/theme/app_theme.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppTheme.primaryGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(child: Image.asset("assets/images/image1.png")),
                  RotatedBox(
                    quarterTurns: 1,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.width,
                      child: Text(
                        "EXTREME",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                    },
                    child: Container(
                      width: 270,
                      height: 75,
                      margin: const EdgeInsets.only(
                        bottom: 30,
                      ),
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(36, 44, 59, 1),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(38),
                              bottomLeft: Radius.circular(38))),
                      child: Row(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color.fromRGBO(75, 76, 237, 1),
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(239, 186, 51, 1),
                                    width: 5)),
                            child: const Icon(
                              Icons.arrow_forward_ios_outlined,
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Text(
                            "Get Start",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                  top: 280,
                  child: Transform.translate(
                      offset: const Offset(10, 0),
                      child: Image.asset("assets/images/pngwing.png")))
            ],
          ),
        ),
      ),
    );
  }
}
