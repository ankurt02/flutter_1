import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_1/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        )
      ),
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: Container(
        color:  Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          // buttonPadding: EdgeInsets.all(8),


          // at this place, insted of price, an add to cart button can be added
          children: [
            "₹${catalog.price}".text.semiBold.xl3.make(),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 204, 0)),
                  // elevation: MaterialStateProperty.all(4),
                    animationDuration: Duration(milliseconds: 100),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30)
                        )
                      )
                    )
                ),
                child: Text(
                  "Add to cart",
                  style: GoogleFonts.openSans(
                    fontSize: 24,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500
                  ),
                )
          )
          .wh(context.screenWidth/2, 60)
          ],
        ).py0(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 4),
              child: Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).h32(context),
            ),
            Expanded(
              child: VxArc(
                height: 30,
                edge: VxEdge.top,
                arcType: VxArcType.convey,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Text(catalog.name,
                            style: GoogleFonts.roboto(
                                fontSize: 32, fontWeight: FontWeight.w600)),
                        catalog.desc.text.xl
                            .textStyle(context.captionStyle)
                            .make(),
                        12.heightBox,
                        "Duo tempor et sed et eos ipsum, sea amet accusam amet stet diam vero labore duo. Kasd kasd diam accusam est ipsum voluptua gubergren ea nonumy. Ea lorem ipsum lorem no, dolor no stet dolor lorem no dolor dolore lorem et. Sadipscing lorem vero labore amet sea duo magna stet."
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .p16()
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
