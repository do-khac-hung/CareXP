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

        export declare const enum Fields {
            Id = "Id",
            TenantId = "TenantId",
            ModifiedDate = "ModifiedDate",
            ModifiedBy = "ModifiedBy",
            CustomerId = "CustomerId",
            Status = "Status",
            Vin = "Vin",
            Model = "Model",
            Subject = "Subject",
            MainContent = "MainContent",
            FeatureImage = "FeatureImage"
        }
    }
}

