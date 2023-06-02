import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import { CreateOrganizerDTO } from 'src/organizer/dto/createOrganizer.dto';
import { UpdateOrganizerDTO } from 'src/organizer/dto/updateOrganizer.dto';
import { OrganizerI } from 'src/organizer/interfaces/organizer.interface';

@Injectable()
export class OrganizerService {
    constructor(@InjectModel('Organizer') private organizerModel: Model<CreateOrganizerDTO>){}

    async getAllOrganizers(): Promise<OrganizerI[]> {
        try {
            const newOrganizer = await this.organizerModel.find();
            return newOrganizer;
            
        } catch (error) {
            throw error;
        }
    }

    async getOrganizerById(id: string): Promise<OrganizerI> {
        try {
            const newOrganizer = await this.organizerModel.findOne({ _id: id });
            return newOrganizer;
        } catch (error) {
            throw error;
        }
    }

    async updateOrganizer(id: String, organizer: UpdateOrganizerDTO): Promise<OrganizerI> {
        console.log(id)
        try {
            const newOrganizer = await this.organizerModel.findOneAndUpdate({ _id: id }, organizer);
            console.log(newOrganizer)
            return newOrganizer;
        } catch (error) {
            throw error;
        }
    }

    async deleteOrganizer(id: String): Promise<OrganizerI> {
        try {
            console.log('deleting this organizer', id);
            const newOrganizer = await this.organizerModel.findOneAndDelete({ _id: id });
            console.log(newOrganizer);
            console.log("delete organizer");
            return newOrganizer;
        } catch (error) {
            throw error;
        }
    }

}
