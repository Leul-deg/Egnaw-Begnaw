import { Controller, Get, Post, Delete, Param, Body, Req, RawBodyRequest, UseGuards } from '@nestjs/common';
import { JwtGuard } from 'src/auth/guard';
import { CreateOrganizerDTO } from 'src/organizer/dto/createOrganizer.dto';
import { UpdateOrganizerDTO } from 'src/organizer/dto/updateOrganizer.dto'; 
import { OrganizerI } from 'src/Organizer/interfaces/organizer.interface';
import { OrganizerService } from 'src/organizer/services/organizer/organizer.service';
@UseGuards(JwtGuard)
@Controller()
export class OrganizerController {

    constructor(private organizerService: OrganizerService) {}

    @Get()
    async getAllOrganizers(): Promise<OrganizerI[]> {
        return this.organizerService.getAllOrganizers();
    }

    @Get('/:id')
    async getOrganizerById(@Param('id') id: string) {
        return this.organizerService.getOrganizerById(id);
    }

    @Post('update/:id')
    async updateOrganizer(@Param('id') id: string, @Body() Organizer: UpdateOrganizerDTO, @Req() req: RawBodyRequest<Request>): Promise<OrganizerI> {
        const raw = req.rawBody;
        return this.organizerService.updateOrganizer(id, Organizer);
    }

    @Delete('delete/:id')
    async deleteOrganizer(@Param('id') id: string): Promise<OrganizerI> {
        return this.organizerService.deleteOrganizer(id);
    }

}
