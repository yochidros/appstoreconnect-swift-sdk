// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersionExperimentTreatments.WithID {
	public var appStoreVersionExperimentTreatmentLocalizations: AppStoreVersionExperimentTreatmentLocalizations {
		AppStoreVersionExperimentTreatmentLocalizations(path: path + "/appStoreVersionExperimentTreatmentLocalizations")
	}

	public struct AppStoreVersionExperimentTreatmentLocalizations {
		/// Path: `/v1/appStoreVersionExperimentTreatments/{id}/appStoreVersionExperimentTreatmentLocalizations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionExperimentTreatmentLocalizationsResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var filterLocale: [String]?
			public var fieldsAppScreenshotSets: [FieldsAppScreenshotSets]?
			public var fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]?
			public var fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]?
			public var fieldsAppPreviewSets: [FieldsAppPreviewSets]?
			public var limit: Int?
			public var limitAppScreenshotSets: Int?
			public var limitAppPreviewSets: Int?
			public var include: [Include]?

			public enum FieldsAppScreenshotSets: String, Codable, CaseIterable {
				case appCustomProductPageLocalization
				case appScreenshots
				case appStoreVersionExperimentTreatmentLocalization
				case appStoreVersionLocalization
				case screenshotDisplayType
			}

			public enum FieldsAppStoreVersionExperimentTreatments: String, Codable, CaseIterable {
				case appIcon
				case appIconName
				case appStoreVersionExperiment
				case appStoreVersionExperimentTreatmentLocalizations
				case appStoreVersionExperimentV2
				case name
				case promotedDate
			}

			public enum FieldsAppStoreVersionExperimentTreatmentLocalizations: String, Codable, CaseIterable {
				case appPreviewSets
				case appScreenshotSets
				case appStoreVersionExperimentTreatment
				case locale
			}

			public enum FieldsAppPreviewSets: String, Codable, CaseIterable {
				case appCustomProductPageLocalization
				case appPreviews
				case appStoreVersionExperimentTreatmentLocalization
				case appStoreVersionLocalization
				case previewType
			}

			public enum Include: String, Codable, CaseIterable {
				case appPreviewSets
				case appScreenshotSets
				case appStoreVersionExperimentTreatment
			}

			public init(filterLocale: [String]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets]? = nil, limit: Int? = nil, limitAppScreenshotSets: Int? = nil, limitAppPreviewSets: Int? = nil, include: [Include]? = nil) {
				self.filterLocale = filterLocale
				self.fieldsAppScreenshotSets = fieldsAppScreenshotSets
				self.fieldsAppStoreVersionExperimentTreatments = fieldsAppStoreVersionExperimentTreatments
				self.fieldsAppStoreVersionExperimentTreatmentLocalizations = fieldsAppStoreVersionExperimentTreatmentLocalizations
				self.fieldsAppPreviewSets = fieldsAppPreviewSets
				self.limit = limit
				self.limitAppScreenshotSets = limitAppScreenshotSets
				self.limitAppPreviewSets = limitAppPreviewSets
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterLocale, forKey: "filter[locale]")
				encoder.encode(fieldsAppScreenshotSets, forKey: "fields[appScreenshotSets]")
				encoder.encode(fieldsAppStoreVersionExperimentTreatments, forKey: "fields[appStoreVersionExperimentTreatments]")
				encoder.encode(fieldsAppStoreVersionExperimentTreatmentLocalizations, forKey: "fields[appStoreVersionExperimentTreatmentLocalizations]")
				encoder.encode(fieldsAppPreviewSets, forKey: "fields[appPreviewSets]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitAppScreenshotSets, forKey: "limit[appScreenshotSets]")
				encoder.encode(limitAppPreviewSets, forKey: "limit[appPreviewSets]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
