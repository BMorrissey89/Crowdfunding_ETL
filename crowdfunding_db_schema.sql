-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Campaign] (
    [cf_id] INTEGER  NOT NULL ,
    [contact_id] INTEGER  NOT NULL ,
    [company_name] VARCHAR  NOT NULL ,
    [description] VARCHAR  NOT NULL ,
    [goal] NUMERIC  NOT NULL ,
    [pledged] NUMERIC  NOT NULL ,
    [outcome] VARCHAR  NOT NULL ,
    [backers_count] INTEGER  NOT NULL ,
    [country] VARCHAR  NOT NULL ,
    [currency] VARCHAR  NOT NULL ,
    [launch_date] DATE  NOT NULL ,
    [end_date] DATE  NOT NULL ,
    [category_id] VARCHAR  NOT NULL ,
    [subcategory_id] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_Campaign] PRIMARY KEY CLUSTERED (
        [cf_id] ASC
    )
)

CREATE TABLE [Category] (
    [category_id] VARCHAR  NOT NULL ,
    [category] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED (
        [category_id] ASC
    )
)

CREATE TABLE [Subcategory] (
    [subcategory_id] VARCHAR  NOT NULL ,
    [subcategory] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_Subcategory] PRIMARY KEY CLUSTERED (
        [subcategory_id] ASC
    )
)

CREATE TABLE [Contacts] (
    [contact_id] INTEGER  NOT NULL ,
    [first_name] VARCHAR  NOT NULL ,
    [last_name] VARCHAR  NOT NULL ,
    [email] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED (
        [contact_id] ASC
    )
)

ALTER TABLE [Campaign] WITH CHECK ADD CONSTRAINT [FK_Campaign_contact_id] FOREIGN KEY([contact_id])
REFERENCES [Contacts] ([contact_id])

ALTER TABLE [Campaign] CHECK CONSTRAINT [FK_Campaign_contact_id]

ALTER TABLE [Campaign] WITH CHECK ADD CONSTRAINT [FK_Campaign_category_id] FOREIGN KEY([category_id])
REFERENCES [Category] ([category_id])

ALTER TABLE [Campaign] CHECK CONSTRAINT [FK_Campaign_category_id]

ALTER TABLE [Campaign] WITH CHECK ADD CONSTRAINT [FK_Campaign_subcategory_id] FOREIGN KEY([subcategory_id])
REFERENCES [Subcategory] ([subcategory_id])

ALTER TABLE [Campaign] CHECK CONSTRAINT [FK_Campaign_subcategory_id]

COMMIT TRANSACTION QUICKDBD