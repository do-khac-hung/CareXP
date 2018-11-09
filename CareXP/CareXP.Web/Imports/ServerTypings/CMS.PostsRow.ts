
namespace CareXP.CMS {
    export interface PostsRow {
        Id?: number;
        TenantId?: number;
        ModifiedDate?: string;
        ModifiedBy?: number;
        CustomerId?: number;
        Status?: string;
        Vin?: string;
        Model?: string;
        Subject?: string;
        MainContent?: string;
        FeatureImage?: string;
    }

    export namespace PostsRow {
        export const idProperty = 'Id';
        export const nameProperty = 'Status';
        export const localTextPrefix = 'CMS.Posts';

        export namespace Fields {
            export declare const Id;
            export declare const TenantId;
            export declare const ModifiedDate;
            export declare const ModifiedBy;
            export declare const CustomerId;
            export declare const Status;
            export declare const Vin;
            export declare const Model;
            export declare const Subject;
            export declare const MainContent;
            export declare const FeatureImage;
        }

        [
            'Id',
            'TenantId',
            'ModifiedDate',
            'ModifiedBy',
            'CustomerId',
            'Status',
            'Vin',
            'Model',
            'Subject',
            'MainContent',
            'FeatureImage'
        ].forEach(x => (<any>Fields)[x] = x);
    }
}