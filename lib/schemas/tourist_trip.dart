import 'package:flutter_schema_org/src/schema_serializable.dart';
import 'package:flutter_schema_org/src/utils.dart';
import 'package:flutter_schema_org/schemas/audience.dart';
import 'package:flutter_schema_org/schemas/item_list.dart';
import 'package:flutter_schema_org/schemas/place.dart';
import 'package:flutter_schema_org/schemas/demand.dart';
import 'package:flutter_schema_org/schemas/offer.dart';
import 'package:flutter_schema_org/schemas/trip.dart';
import 'package:flutter_schema_org/schemas/organization.dart';
import 'package:flutter_schema_org/schemas/person.dart';
import 'package:flutter_schema_org/schemas/text_object.dart';
import 'package:flutter_schema_org/schemas/property_value.dart';
import 'package:flutter_schema_org/schemas/image_object.dart';
import 'package:flutter_schema_org/schemas/creative_work.dart';
import 'package:flutter_schema_org/schemas/action.dart';
import 'package:flutter_schema_org/schemas/event.dart';

/// //www2.unwto.org/) defines tourism trip as the Trip taken by visitors.
/// (See examples below.)
/// See https://schema.org/TouristTrip
class SchemaTouristTrip implements SchemaSerializable {
  /// Attraction suitable for type(s) of tourist. E.g. children, visitors from
  /// a particular country, etc.
  ///
  /// Supported types: [SchemaAudience], [String]
  dynamic touristType;

  /// The expected arrival time.
  ///
  /// Supported types: [String], [String]
  String? arrivalTime;

  /// The expected departure time.
  ///
  /// Supported types: [String], [String]
  String? departureTime;

  /// Destination(s) ( [SchemaPlace] ) that make up a trip. For a trip where
  /// destination order is important use [SchemaItemList] to specify that order
  /// (see examples).
  ///
  /// Supported types: [SchemaItemList], [SchemaPlace]
  dynamic itinerary;

  /// An offer to provide this item&#x2014;for example, an offer to sell a
  /// product, rent the DVD of a movie, perform a service, or give away tickets
  /// to an event. Use [SchemabusinessFunction] to indicate the kind of
  /// transaction offered, i.e. sell, lease, etc. This property can also be
  /// used to describe a [SchemaDemand]. While this property is listed as
  /// expected on a number of common types, it can be used in others. In that
  /// case, using a second type, such as Product or a subtype of Product, can
  /// clarify the nature of the offer.
  ///
  /// Supported types: [SchemaDemand], [SchemaOffer]
  dynamic offers;

  /// Identifies that this [SchemaTrip] is a subTrip of another Trip. For
  /// example Day 1, Day 2, etc. of a multi-day trip.
  SchemaTrip? partOfTrip;

  /// The service provider, service operator, or service performer; the goods
  /// producer. Another party (a seller) may offer those services or goods on
  /// behalf of the provider. A provider may also serve as the seller.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic provider;

  /// Identifies a [SchemaTrip] that is a subTrip of this Trip. For example Day
  /// 1, Day 2, etc. of a multi-day trip.
  SchemaTrip? subTrip;

  /// The location of origin of the trip, prior to any destination(s).
  SchemaPlace? tripOrigin;

  /// //schema.org/docs/styleguide.html">style guide</a>.
  ///
  /// Supported types: [String], [String]
  String? additionalType;

  /// An alias for the item.
  String? alternateName;

  /// A description of the item.
  ///
  /// Supported types: [String], [SchemaTextObject]
  dynamic description;

  /// A sub property of description. A short description of the item used to
  /// disambiguate from other, similar items. Information from other properties
  /// (in particular, name) may be necessary for the description to be useful
  /// for disambiguation.
  String? disambiguatingDescription;

  /// The identifier property represents any kind of identifier for any kind of
  /// [SchemaThing], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides
  /// dedicated properties for representing many of these, either as textual
  /// strings or as URL (URI) links. See [background
  /// notes](/docs/datamodel.html#identifierBg) for more details.
  ///
  /// Supported types: [SchemaPropertyValue], [String], [String]
  dynamic identifier;

  /// An image of the item. This can be a [SchemaURL] or a fully described
  /// [SchemaImageObject].
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic image;

  /// Indicates a page (or other CreativeWork) for which this thing is the main
  /// entity being described. See [background
  /// notes](/docs/datamodel.html#mainEntityBackground) for details.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic mainEntityOfPage;

  /// The name of the item.
  String? name;

  /// Indicates a potential Action, which describes an idealized action in
  /// which this thing would play an 'object' role.
  SchemaAction? potentialAction;

  /// URL of a reference Web page that unambiguously indicates the item's
  /// identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or
  /// official website.
  String? sameAs;

  /// A CreativeWork or Event about this Thing.
  ///
  /// Supported types: [SchemaCreativeWork], [SchemaEvent]
  dynamic subjectOf;

  /// URL of the item.
  String? url;

  /// Create a new instance of [SchemaTouristTrip]
  SchemaTouristTrip({
    this.touristType,
    this.arrivalTime,
    this.departureTime,
    this.itinerary,
    this.offers,
    this.partOfTrip,
    this.provider,
    this.subTrip,
    this.tripOrigin,
    this.additionalType,
    this.alternateName,
    this.description,
    this.disambiguatingDescription,
    this.identifier,
    this.image,
    this.mainEntityOfPage,
    this.name,
    this.potentialAction,
    this.sameAs,
    this.subjectOf,
    this.url,
  });

  /// Serialize [SchemaTouristTrip] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'TouristTrip',
        'touristType': convertToJsonLd(touristType, [SchemaAudience, String]),
        'arrivalTime': convertToJsonLd(arrivalTime, [String, String]),
        'departureTime': convertToJsonLd(departureTime, [String, String]),
        'itinerary': convertToJsonLd(itinerary, [SchemaItemList, SchemaPlace]),
        'offers': convertToJsonLd(offers, [SchemaDemand, SchemaOffer]),
        'partOfTrip': convertToJsonLd(partOfTrip, [SchemaTrip]),
        'provider':
            convertToJsonLd(provider, [SchemaOrganization, SchemaPerson]),
        'subTrip': convertToJsonLd(subTrip, [SchemaTrip]),
        'tripOrigin': convertToJsonLd(tripOrigin, [SchemaPlace]),
        'additionalType': convertToJsonLd(additionalType, [String, String]),
        'alternateName': convertToJsonLd(alternateName, [String]),
        'description': convertToJsonLd(description, [String, SchemaTextObject]),
        'disambiguatingDescription':
            convertToJsonLd(disambiguatingDescription, [String]),
        'identifier':
            convertToJsonLd(identifier, [SchemaPropertyValue, String, String]),
        'image': convertToJsonLd(image, [SchemaImageObject, String]),
        'mainEntityOfPage':
            convertToJsonLd(mainEntityOfPage, [SchemaCreativeWork, String]),
        'name': convertToJsonLd(name, [String]),
        'potentialAction': convertToJsonLd(potentialAction, [SchemaAction]),
        'sameAs': convertToJsonLd(sameAs, [String]),
        'subjectOf':
            convertToJsonLd(subjectOf, [SchemaCreativeWork, SchemaEvent]),
        'url': convertToJsonLd(url, [String]),
      });
}
