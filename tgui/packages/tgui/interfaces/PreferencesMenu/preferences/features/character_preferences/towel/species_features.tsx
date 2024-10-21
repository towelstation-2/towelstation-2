import { Feature, FeatureTextInput } from '../../base';

export const xeno_crew_flavor_text: Feature<string> = {
  name: 'Flavor Text (Xeno Crew)',
  description: "Only appears if you're playing as a crew alligned xenomorph.",
  component: FeatureTextInput,
};

export const xeno_crew_flavor_text_nsfw: Feature<string> = {
  name: 'Flavor Text (Xeno Crew, NSFW)',
  description:
    'A portion of your flavor text that is stored in examine, used for Xenomorph crewmembers. Used to store visual sexual details.',
  component: FeatureTextInput,
};
